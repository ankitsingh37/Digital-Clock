module digital_clock(
    input clk,
    input rst,
    input load,
    input [3:0] loadin,
    input [2:0] select,
    input alm,
    input almin,
    input swrst,
    input swp,
    input sw,
    input tmr,
    input tmrin,
    input tmrp,
    output reg buzz2,
    output [3:0] Anode_Activate,
    output [6:0] LED_out,
    output reg buzz,
    output reg [3:0] th1,
    output reg [3:0] th2
);

    reg [3:0] tm1, tm2, ts1, ts2;

    // Clock Divider Variables
    reg clk_out = 0;
    reg [25:0] count = 0;

    // Clock Divider Logic
    always @(negedge clk) begin
        count = count + 1;
        if (count == 50000000) begin
            clk_out <= !clk_out;
            count <= 0;
        end
    end

    // StopWatch Variables
    reg [16:0] SEC_CNT = 0;
    reg [4:0] shh;
    reg [5:0] smm, sss;
    reg [3:0] sh1, sh2, sm1, sm2, ss1, ss2;

    // StopWatch Logic
    always @(posedge clk_out or posedge swrst) begin
        if (sw) begin
            if (swrst) begin
                SEC_CNT <= 0;
                shh <= 0;
                smm <= 0;
                sss <= 0;
                sh1 <= 0;
                sh2 <= 0;
                sm1 <= 0;
                sm2 <= 0;
                ss1 <= 0;
                ss2 <= 0;
            end else if (swp == 0) begin
                SEC_CNT = SEC_CNT + 1;
            end

            shh <= SEC_CNT / 3600;
            smm <= (SEC_CNT % 3600) / 60;
            sss <= SEC_CNT % 60;
            sh1 = shh / 10;
            sh2 = shh % 10;
            sm1 = smm / 10;
            sm2 = smm % 10;
            ss1 = sss / 10;
            ss2 = sss % 10;
        end
    end

    // Alarm Variables
    reg [3:0] ah1 = 0, ah2 = 0, am1 = 0, am2 = 0;
    reg [16:0] alm_cnt = 0;

    // Alarm Logic
    always @(posedge clk_out) begin
        if (almin && !load) begin
            case (select)
                3'b010: if (loadin <= 9) am2 <= loadin;
                3'b011: if (loadin <= 5) am1 <= loadin;
                3'b100: if (loadin <= 4) ah2 <= loadin;
                3'b101: if (loadin <= 2) ah1 <= loadin;
            endcase
            alm_cnt <= (am2 * 60) + (am1 * 600) + (ah2 * 3600) + (ah1 * 36000);
        end

        if (alm) begin
            if (alm_cnt <= sec_cnt && sec_cnt < alm_cnt + 60) buzz = 1;
            else buzz = 0;
        end else buzz = 0;
    end

    // Timer Variables
    reg [16:0] tmr_cnt = 0;
    reg [4:0] Thh = 0;
    reg [5:0] Tmm = 0, Tss = 0;
    reg [3:0] Th1 = 0, Th2 = 0, Tm1 = 0, Tm2 = 0, Ts1 = 0, Ts2 = 0;

    // Timer Logic
    always @(posedge clk_out) begin
        if (tmrin && !load && !almin) begin
            case (select)
                3'b000: if (loadin <= 9) Ts2 <= loadin;
                3'b001: if (loadin <= 5) Ts1 <= loadin;
                3'b010: if (loadin <= 9) Tm2 <= loadin;
                3'b011: if (loadin <= 5) Tm1 <= loadin;
                3'b100: if (loadin <= 4) Th2 <= loadin;
                3'b101: if (loadin <= 2) Th1 <= loadin;
            endcase
            tmr_cnt <= Ts2 + (Ts1 * 10) + (Tm2 * 60) + (Tm1 * 600) + (Th2 * 3600) + (Th1 * 36000);
        end

        if (tmr && !sw && !alm) begin
            if (tmrp == 0 && tmr_cnt > 0) tmr_cnt = tmr_cnt - 1;

            Thh = tmr_cnt / 3600;
            Tmm = (tmr_cnt % 3600) / 60;
            Tss = tmr_cnt % 60;
            Th1 = Thh / 10;
            Th2 = Thh % 10;
            Tm1 = Tmm / 10;
            Tm2 = Tmm % 10;
            Ts1 = Tss / 10;
            Ts2 = Tss % 10;
            if (tmr_cnt == 0) buzz2 = 1;
            else buzz2 = 0;
        end else buzz2 = 0;
    end

    // Clock Variables
    reg [16:0] sec_cnt = 0;
    reg [4:0] hh;
    reg [5:0] mm, ss;
    reg [3:0] h1, h2, m1, m2, s1, s2;

    // Clock Logic
    always @(posedge clk_out or posedge rst) begin
        if (rst) begin
            sec_cnt <= 0;
            hh <= 0;
            mm <= 0;
            ss <= 0;
            h1 <= 0;
            h2 <= 0;
            m1 <= 0;
            m2 <= 0;
            s1 <= 0;
            s2 <= 0;
        end else if (sec_cnt == 86400) begin
            sec_cnt <= 0;
            hh <= 0;
            mm <= 0;
            ss <= 0;
            h1 <= 0;
            h2 <= 0;
            m1 <= 0;
            m2 <= 0;
            s1 <= 0;
            s2 <= 0;
        end else begin
            if (load && !almin && !tmrin) begin
                case (select)
                    3'b000: if (loadin <= 9) s2 <= loadin;
                    3'b001: if (loadin <= 5) s1 <= loadin;
                    3'b010: if (loadin <= 9) m2 <= loadin;
                    3'b011: if (loadin <= 5) m1 <= loadin;
                    3'b100: if (loadin <= 4) h2 <= loadin;
                    3'b101: if (loadin <= 2) h1 <= loadin;
                endcase
                sec_cnt <= s2 + (s1 * 10) + (m2 * 60) + (m1 * 600) + (h2 * 3600) + (h1 * 36000);
            end

            if (!load) sec_cnt = sec_cnt + 1;

            hh = sec_cnt / 3600;
            mm = (sec_cnt % 3600) / 60;
            ss = sec_cnt % 60;
            h1 = hh / 10;
            h2 = hh % 10;
            m1 = mm / 10;
            m2 = mm % 10;
            s1 = ss / 10;
            s2 = ss % 10;
        end
    end

    // 7 Segment Display Logic
    always @(posedge clk) begin
        if (sw) begin
            ts2 = ss2;
            ts1 = ss1;
            tm2 = sm2;
            tm1 = sm1;
            th2 = sh2;
            th1 = sh1;
        end else if (almin) begin
            ts2 = 0;
            ts1 = 0;
            tm2 = am2;
            tm1 = am1;
            th2 = ah2;
            th1 = ah1;
        end else if (tmrin || tmr) begin
            ts2 = Ts2;
            ts1 = Ts1;
            tm2 = Tm2;
            tm1 = Tm1;
            th2 = Th2;
            th1 = Th1;
        end else begin
            ts2 = s2;
            ts1 = s1;
            tm2 = m2;
            tm1 = m1;
            th2 = h2;
            th1 = h1;
        end
    end

    // Clock Anode and Cathode Control
    clk_anode clk_anode(
        .clk(clk),
        .rst(rst),
        .digit4(ts2),
        .digit3(ts1),
        .digit2(tm2),
        .digit1(tm1),
        .Anode_Activate(Anode_Activate),
        .LED_out(LED_out)
    );

endmodule
