<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="GridView_MiniProject.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True"
                AutoGenerateColumns="False" OnRowDeleting="RowDeleting"
                OnRowCancelingEdit="cancelRecord" OnRowEditing="editRecord"
                OnRowUpdating="updateRecord" CellPadding="4"
                EnableModelValidation="True" GridLines="None" Width="1297px"
                ForeColor="#333333"
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <RowStyle HorizontalAlign="Center" />
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="true" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="true" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="true" ForeColor="#333333" />

                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>Id</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <HeaderTemplate>Name</HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%#Bind("name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName" runat="server" Text='<%#Bind("name") %>' MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtName" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revtxtName" runat="server" Text="*" ToolTip="Enter alphabate " ControlToValidate="txtName" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtNewName" runat="server" MaxLength="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtNewName" runat="server" Text="*" ToolTip="Enter name" ControlToValidate="txtNewName"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revtxtNewName" runat="server" Text="*" ToolTip="Enter alphabate " ControlToValidate="txtNewName" ValidationExpression="^[a-zA-Z'.\s]{1,40}$"></asp:RegularExpressionValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
            <HeaderTemplate>Age</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID="lblAge" runat ="server" Text='<%#Bind("age") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID ="txtAge" runat="server" Text='<%#Bind("age") %>' MaxLength="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtAge" runat="server" Text="*" ToolTip="Enter age" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtAge" runat="server" Text="*" ToolTip="Enter numeric value" ControlToValidate="txtAge" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
          
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="txtNewAge" runat="server" MaxLength="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewAge" runat="server" Text="*" ToolTip="Enter age" ControlToValidate="txtNewAge"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revNewtxtAge" runat="server" Text="*" ToolTip="Enter numeric value" ControlToValidate="txtNewAge" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>

                     <asp:TemplateField>
            <HeaderTemplate>Salary</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID = "lblSalary" runat="server" Text='<%#Bind("salary") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtSalary" runat="server" Text='<%#Bind("salary") %>'  MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtSalary" runat="server" Text="*"  ToolTip="Enter salary" ControlToValidate="txtSalary"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtSalary" runat="server" Text="*" ToolTip="Enter numeric value" ControlToValidate="txtSalary" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
          
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="txtNewSalary" runat="server" MaxLength="10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewSalary" runat="server" Text="*"  ToolTip="Enter salary" ControlToValidate="txtNewSalary"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revtxtNewSalary" runat="server" Text="*" ToolTip="Enter numeric value" ControlToValidate="txtNewSalary" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>

                       <asp:TemplateField>
            <HeaderTemplate>Country</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID = "lblCountry" runat="server" Text='<%#Bind("country") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtCountry" runat="server" Text='<%#Bind("country") %>' MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtCountry" runat="server" Text="*" ToolTip="Enter country" ControlToValidate="txtCountry"></asp:RequiredFieldValidator>
        
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="txtNewCountry" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewCountry" runat="server" Text="*" ToolTip="Enter country" ControlToValidate="txtNewCountry"></asp:RequiredFieldValidator>
            </FooterTemplate>
            </asp:TemplateField>

                    <asp:TemplateField>
            <HeaderTemplate>City</HeaderTemplate>
            <ItemTemplate>
            <asp:Label ID = "lblCity" runat="server" Text='<%#Bind("city") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
            <asp:TextBox ID="txtCity" runat="server" Text='<%#Bind("city") %>' MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtCity" runat="server" Text="*" ToolTip="Enter city" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
            </EditItemTemplate>
            <FooterTemplate>
            <asp:TextBox ID="txtNewCity" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvtxtNewCity" runat="server" Text="*" ToolTip="Enter city" ControlToValidate="txtNewCity"></asp:RequiredFieldValidator>
            </FooterTemplate>
            </asp:TemplateField>

                     <asp:TemplateField>
            <HeaderTemplate>Photo</HeaderTemplate>
            <ItemTemplate>
            <asp:Image ID="imgPhoto" Width="100px" Height="100px" runat="server"  ImageUrl='<%#Bind("photopath") %>' />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:FileUpload ID="fuPhoto" runat="server" ToolTip="select Employee Photo"/>
            <asp:RegularExpressionValidator ID="revfuPhoto" runat="server" Text="*" ToolTip="Image formate only" ControlToValidate="fuPhoto" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
            </EditItemTemplate>
            <FooterTemplate>
            <asp:FileUpload ID="fuNewPhoto" runat="server" ToolTip="select Employee Photo"/>
            <asp:RequiredFieldValidator ID="rfvfuNewPhoto" runat="server" ErrorMessage="*" ToolTip="Select Photo" ControlToValidate="fuNewPhoto"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revfuNewPhoto" runat="server" Text="*" ToolTip="Image formate only" ControlToValidate="fuNewPhoto" ValidationExpression="[a-zA-Z0_9].*\b(.jpeg|.JPEG|.jpg|.JPG|.jpe|.JPE|.png|.PNG|.mpp|.MPP|.gif|.GIF)\b"></asp:RegularExpressionValidator>
            </FooterTemplate>
            </asp:TemplateField>

                     <asp:TemplateField>
            <HeaderTemplate>Operation</HeaderTemplate>
            <ItemTemplate>
            <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CausesValidation="true" OnClientClick="return confirm('Are you sure?')" />
            </ItemTemplate>
            <EditItemTemplate>
            <asp:Button ID="btnUpdate" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
            </EditItemTemplate>
 
            <FooterTemplate>
            <asp:Button ID="btnNewInsert" runat="server" Text="Insert" OnClick="InsertNewRecord"/>
            <asp:Button ID="btnNewCancel" runat="server" Text="Cancel" OnClick="AddNewCancel" CausesValidation="false" />
            </FooterTemplate>        
            </asp:TemplateField>      
                </Columns>
                 <EmptyDataTemplate>
                      No record available                    
            </EmptyDataTemplate> 
            </asp:GridView>
              <br />
        <asp:Button ID="btnAdd" runat="server" Text="Add New Record" OnClick="AddNewRecord" />  
        </div>
    </form>
</body>
</html>
