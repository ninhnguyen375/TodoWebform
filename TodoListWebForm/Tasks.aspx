﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="TodoListWebForm.Tasks" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <%--<div class="row my-3">
                    <div class="col-12 m-0 p-0">
                        <h3 class="font-weight-bold p-0 m-0">Table Tasks of week</h3>
                    </div>
                    <div class="col-12 m-0 p-0 mt-3">
                        <div class="d-flex">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                <i class="fas fa-plus mr-1"></i>Add new task
                            </button>
                            <div class="ml-auto d-flex justify-content-end">
                                <asp:TextBox ID="selectWeek" CssClass="form-control ml-2" Width="200" TextMode="Week" runat="server">
                                </asp:TextBox>
                                <asp:Button CssClass="btn btn-primary ml-2" OnClientClick="handleSelectWeek" Text="Filter" runat="server" OnClick="handleSelectWeek" />
                            </div>
                        </div>
                    </div>
                </div>--%>

                <%--<div class="row table-task-of-week">
                    <div class="col-2">
                        <h3>Monday</h3>
                        <div class="wrap-table">
                            <asp:DataList CssClass="task-of-week" runat="server" ID="mondayDataList">
                                <ItemTemplate>
                                    <a href="<%# "/tasksDetail?id=" + Eval("id") %>">
                                        <div class="task-of-week__item">
                                            <p class="task-of-week__title"><%# Eval("title") %></p>
                                            <asp:DataList
                                                runat="server"
                                                DataSource='<%# Eval("Partners") %>'>
                                                <ItemTemplate>
                                                    <div class="task-of-week__user" title='<%# Eval("email") %>'>
                                                        <%# Convert.ToInt32(Eval("ID")) == Convert.ToInt32(Session["id"]) ? "<i class='fas fa-user-shield'></i>" : "<i class='fas fa-user'></i>" %>
                                                        <%# Eval("name") %>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:Label CssClass='<%# Eval("status").Equals("inprogress") ? "badge badge-primary" : (Eval("status").Equals("expired") ? "badge badge-danger" : "badge badge-success") %>' ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="col-2">
                        <h3>Tuesday</h3>
                        <div class="wrap-table">
                            <asp:DataList CssClass="task-of-week" runat="server" ID="tuesdayDataList">
                                <ItemTemplate>
                                    <a href="<%# "/tasksDetail?id=" + Eval("id") %>">
                                        <div class="task-of-week__item">
                                            <p class="task-of-week__title"><%# Eval("title") %></p>
                                            <asp:DataList
                                                runat="server"
                                                DataSource='<%# Eval("Partners") %>'>
                                                <ItemTemplate>
                                                    <div class="task-of-week__user" title='<%# Eval("email") %>'>
                                                        <%# Convert.ToInt32(Eval("ID")) == Convert.ToInt32(Session["id"]) ? "<i class='fas fa-user-shield'></i>" : "<i class='fas fa-user'></i>" %>
                                                        <%# Eval("name") %>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:Label CssClass='<%# Eval("status").Equals("inprogress") ? "badge badge-primary" : (Eval("status").Equals("expired") ? "badge badge-danger" : "badge badge-success") %>' ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="col-2">
                        <h3>Wednesday</h3>
                        <div class="wrap-table">
                            <asp:DataList CssClass="task-of-week" runat="server" ID="wednesdayDataList">
                                <ItemTemplate>
                                    <a href="<%# "/tasksDetail?id=" + Eval("id") %>">
                                        <div class="task-of-week__item">
                                            <p class="task-of-week__title"><%# Eval("title") %></p>
                                            <asp:DataList
                                                runat="server"
                                                DataSource='<%# Eval("Partners") %>'>
                                                <ItemTemplate>
                                                    <div class="task-of-week__user" title='<%# Eval("email") %>'>
                                                        <%# Convert.ToInt32(Eval("ID")) == Convert.ToInt32(Session["id"]) ? "<i class='fas fa-user-shield'></i>" : "<i class='fas fa-user'></i>" %>
                                                        <%# Eval("name") %>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:Label CssClass='<%# Eval("status").Equals("inprogress") ? "badge badge-primary" : (Eval("status").Equals("expired") ? "badge badge-danger" : "badge badge-success") %>' ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="col-2">
                        <h3>Thursday</h3>
                        <div class="wrap-table">
                            <asp:DataList CssClass="task-of-week" runat="server" ID="thursdayDataList">
                                <ItemTemplate>
                                    <a href="<%# "/tasksDetail?id=" + Eval("id") %>">
                                        <div class="task-of-week__item">
                                            <p class="task-of-week__title"><%# Eval("title") %></p>
                                            <asp:DataList
                                                runat="server"
                                                DataSource='<%# Eval("Partners") %>'>
                                                <ItemTemplate>
                                                    <div class="task-of-week__user" title='<%# Eval("email") %>'>
                                                        <%# Convert.ToInt32(Eval("ID")) == Convert.ToInt32(Session["id"]) ? "<i class='fas fa-user-shield'></i>" : "<i class='fas fa-user'></i>" %>
                                                        <%# Eval("name") %>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:Label CssClass='<%# Eval("status").Equals("inprogress") ? "badge badge-primary" : (Eval("status").Equals("expired") ? "badge badge-danger" : "badge badge-success") %>' ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="col-2">
                        <h3>Friday</h3>
                        <div class="wrap-table">
                            <asp:DataList CssClass="task-of-week" runat="server" ID="fridayDataList">
                                <ItemTemplate>
                                    <a href="<%# "/tasksDetail?id=" + Eval("id") %>">
                                        <div class="task-of-week__item">
                                            <p class="task-of-week__title"><%# Eval("title") %></p>
                                            <asp:DataList
                                                runat="server"
                                                DataSource='<%# Eval("Partners") %>'>
                                                <ItemTemplate>
                                                    <div class="task-of-week__user" title='<%# Eval("email") %>'>
                                                        <%# Convert.ToInt32(Eval("ID")) == Convert.ToInt32(Session["id"]) ? "<i class='fas fa-user-shield'></i>" : "<i class='fas fa-user'></i>" %>
                                                        <%# Eval("name") %>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:Label CssClass='<%# Eval("status").Equals("inprogress") ? "badge badge-primary" : (Eval("status").Equals("expired") ? "badge badge-danger" : "badge badge-success") %>' ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="col-2">
                        <h3>Saturday</h3>
                        <div class="wrap-table">
                            <asp:DataList CssClass="task-of-week" runat="server" ID="saturdayDatList">
                                <ItemTemplate>
                                    <a href="<%# "/tasksDetail?id=" + Eval("id") %>">
                                        <div class="task-of-week__item">
                                            <p class="task-of-week__title"><%# Eval("title") %></p>
                                            <asp:DataList
                                                runat="server"
                                                DataSource='<%# Eval("Partners") %>'>
                                                <ItemTemplate>
                                                    <div class="task-of-week__user" title='<%# Eval("email") %>'>
                                                        <i class="fas fa-user"></i>
                                                        <%# Eval("name") %>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:DataList>
                                            <asp:Label CssClass='<%# Eval("status").Equals("inprogress") ? "badge badge-primary" : (Eval("status").Equals("expired") ? "badge badge-danger" : "badge badge-success") %>' ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                        </div>
                                    </a>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>--%>

                <div class="task__wrap card">
                    <div class="d-flex justify-content-between mb-2">
                        <h4>
                            <b><asp:Label runat="server" ID="taskListHeader" Text="MY TASKS"></asp:Label></b>
                        </h4>
                        <button type="button" data-toggle="modal" data-target="#exampleModal" class="btn btn-primary">
                            <i class="fas fa-plus mr-1"></i>
                            ADD NEW TASK
                        </button>
                    </div>
                    <asp:GridView BorderColor="#EEEEEE" 
                        DataKeyNames="id" CssClass="table" runat="server" ID="tasksGridView" 
                        AutoGenerateColumns="False" OnRowDeleting="HandleDeleteTask">
                        <Columns>
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <span><%# Eval("id") %></span>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Title">
                                <ItemTemplate>
                                    <a class="text-primary" href="/tasksDetail?id=<%# Eval("id") %>"><%# Eval("title") %></a>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField ControlStyle-Width="180px" HeaderText="Employee">
                                <ItemTemplate>
                                    <asp:DataList
                                        runat="server"
                                        DataSource='<%# Eval("Partners") %>'>
                                        <ItemTemplate>
                                            <div title='<%# Eval("email") %>'>
                                                <%# Convert.ToInt32(Eval("ID")) == Convert.ToInt32(Session["id"]) ? "<i class='fas fa-user-shield'></i>" : "<i class='fas fa-user'></i>" %>
                                                <%# Eval("name") %>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:BoundField ControlStyle-Width="180px" ControlStyle-CssClass="form-control" DataField="startDate" HeaderText="Start Date">
                            </asp:BoundField>
                            <asp:BoundField ControlStyle-Width="180px" ControlStyle-CssClass="form-control" DataField="endDate" HeaderText="End Date">
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Status" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label CssClass='<%# Eval("status").Equals("inprogress") ? "task__status bg-primary text-white" : (Eval("status").Equals("expired") ? "task__status bg-danger text-white" : "task__status bg-success text-white") %>' ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Scope">
                                <ItemTemplate>
                                    <div class="task__private">
                                        <i class='<%# Convert.ToInt32(Eval("private")) == 1 ? "fas fa-lock" : "fas fa-globe" %>'>
                                        </i>
                                        <span class="mr-1"></span>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Convert.ToInt32(Eval("private")) == 1 ? "private" : "public" %>'></asp:Label>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>


                <div class="task__wrap mt-5 card">
                    <h4>
                        <b><asp:Label runat="server" ID="taskListPublicHeader" Text="OTHER USER'S TASKS"></asp:Label></b>
                    </h4>
                    <asp:GridView BorderColor="#EEEEEE" 
                        DataKeyNames="id" CssClass="table" runat="server" ID="GridViewPublicTasks" 
                        AutoGenerateColumns="False" OnRowDeleting="HandleDeleteTask">
                        <Columns>
                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <span><%# Eval("id") %></span>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Title">
                                <ItemTemplate>
                                    <a class="text-primary" href="/tasksDetail?id=<%# Eval("id") %>"><%# Eval("title") %></a>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField ControlStyle-Width="180px" HeaderText="Employee">
                                <ItemTemplate>
                                    <asp:DataList
                                        runat="server"
                                        DataSource='<%# Eval("Partners") %>'>
                                        <ItemTemplate>
                                            <div title='<%# Eval("email") %>'>
                                                <%# Convert.ToInt32(Eval("ID")) == Convert.ToInt32(Session["id"]) ? "<i class='fas fa-user-shield'></i>" : "<i class='fas fa-user'></i>" %>
                                                <%# Eval("name") %>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:BoundField ControlStyle-Width="180px" ControlStyle-CssClass="form-control" DataField="startDate" HeaderText="Start Date">
                            </asp:BoundField>
                            <asp:BoundField ControlStyle-Width="180px" ControlStyle-CssClass="form-control" DataField="endDate" HeaderText="End Date">
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Status" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:Label CssClass='<%# Eval("status").Equals("inprogress") ? "task__status bg-primary text-white" : (Eval("status").Equals("expired") ? "task__status bg-danger text-white" : "task__status bg-success text-white") %>' ID="Label4" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Scope">
                                <ItemTemplate>
                                    <div class="task__private">
                                        <i class='<%# Convert.ToInt32(Eval("private")) == 1 ? "fas fa-lock" : "fas fa-globe" %>'>
                                        </i>
                                        <span class="mr-1"></span>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Convert.ToInt32(Eval("private")) == 1 ? "private" : "public" %>'></asp:Label>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">ADD NEW TASK</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div>
                                <div class="form-group">
                                    <label for="title">Title</label>
                                    <div class="with-effect">
                                        <asp:TextBox placeholder="Task title" ID="title" class="effect" runat="server"></asp:TextBox>
                                        <span class="focus-border"></span>
                                    </div>
                                    <asp:RequiredFieldValidator CssClass="text-danger" ErrorMessage="Title is required" ControlToValidate="title" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="startDate">Start Date</label>
                                    <div class="with-effect">
                                        <asp:TextBox TextMode="Date" ID="startDate" class="effect w-100" runat="server"></asp:TextBox>
                                        <span class="focus-border"></span>
                                    </div>
                                    <asp:RequiredFieldValidator CssClass="text-danger" ErrorMessage="Start Date is required" ControlToValidate="startDate" runat="server" />
                                </div>
                                <div class="form-group">
                                    <label for="endDate">End Date</label>
                                    <div class="with-effect">
                                        <asp:TextBox TextMode="Date" ID="endDate" class="effect w-100" runat="server"></asp:TextBox>
                                        <span class="focus-border"></span>
                                    </div>
                                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="text-danger" ErrorMessage="End Date is required" ControlToValidate="endDate" runat="server" />
                                    <asp:CompareValidator Display="Dynamic" CssClass="text-danger" runat="server" ErrorMessage="End date needs greater than start date" Type="Date" ControlToValidate="endDate" ControlToCompare="startDate" Operator="GreaterThanEqual"></asp:CompareValidator>
                                </div>
                                <div class="form-group">
                                    <label for="endDate">File</label>
                                    <asp:FileUpload ID="fileInput" class="form-control-file" runat="server"></asp:FileUpload>
                                </div>
                                <div class="form-group">
                                    <label for="endDate">Select partner</label>
                                    <asp:GridView CssClass="table" BorderColor="#eeeeee" EnablePersistedSelection="true" DataKeyNames="id" ID="usersGridView" runat="server" AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Select">
                                                <ItemTemplate>
                                                    <asp:CheckBox runat="server" ID="checkbox" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField ControlStyle-CssClass="form-control" DataField="id" HeaderText="ID">
                                                <ControlStyle CssClass="form-control"></ControlStyle>
                                            </asp:BoundField>
                                            <asp:BoundField ControlStyle-CssClass="form-control" DataField="name" HeaderText="Name">
                                                <ControlStyle CssClass="form-control"></ControlStyle>
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" AssociatedControlID="privateScope">Private</asp:Label>
                                    <asp:CheckBox runat="server" ID="privateScope" />
                                </div>
                                <div class="d-flex justify-content-end">
                                    <asp:Button CssClass="btn btn-primary" Text="  ADD NEW TASK" runat="server" OnClick="HandleCreateTask" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
