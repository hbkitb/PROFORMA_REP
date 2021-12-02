pageextension 50000 "ITB_Item" extends "Item Card"
{
    layout
    {

        addafter(InventoryGrp)
        {
            group(Proforma)
            {
                field(Minimum; Rec.Minimum)
                {
                    ApplicationArea = all;
                    ToolTip = 'Minimum antal på lager';
                }
                field(NotOnFlg; Rec.NotOnFlg)
                {
                    ApplicationArea = all;
                    ToolTip = 'Udelad denne vare i forbindelse med følgeseddeludskrift';
                }



            }
        }
        // Add changes to page layout here
    }

    actions
    {

        addlast(Processing)
        {
            /*    action(xmltest)
                {
                    ApplicationArea = All;

                    trigger OnAction()
                    var
                        ous: OutStream;
                        x: XmlPort "_Inventable ERPG";
                        xml: XmlDocument;
                    begin

                        Xmlport.Run(50102, false, false);
                    end;
                }*/
        }
        addlast(Reporting)
        {

            action("ERP-TEST")
            {
                Caption = 'ERP-IMP';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('dette er ok');
                    //Codeunit.Run(50149);  //50149 "50149_Diverse_OP_ERPG"
                    Codeunit.Run(Codeunit::"50149_Diverse_OP_ERPG");
                end;
            }
            /*
            action("ERP-TEST")
            {
                Caption = 'ERP-I-konti';
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('dette er ok');
                    //Codeunit.Run(50149);  //50149 "50149_Diverse_OP_ERPG"
                    Codeunit.Run(Codeunit::"50151_Diverse_OP_ERPG");
                end;
            }
            */
        }

    }


    var

}