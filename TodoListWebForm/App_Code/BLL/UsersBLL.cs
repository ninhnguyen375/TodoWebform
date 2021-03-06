﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TodoListWebForm.App_Code.Constant;
using TodoListWebForm.App_Code.DAL;
using TodoListWebForm.App_Code.DTO;
using TodoListWebForm.App_Code.DTO.Request;
using TodoListWebForm.App_Code.DTO.Response;

namespace TodoListWebForm.App_Code.BLL
{
    public class UsersBLL
    {
        public static DataTable getListUsers()
        {
            return UsersDAL.getListUsers();
        }

        public static DataTable getListUsersExceptRoleAdmin()
        {
            return UsersDAL.getListUsersExceptRoleAdmin();
        }

        public static DataTable getListUsersExceptCurrentUser(int currentUserId)
        {
            return UsersDAL.getListUsersExceptCurrentUser(currentUserId);
        }
        public static void updateUser(UpdateUserDTO user)
        {
            UsersDAL.updateUser(user);
        }
        public static bool deleteUser(int id)
        {
            return UsersDAL.deleteUser(id);
        }
        public static UsersDTO getUserById (int id)
        {
            return UsersDAL.getUserById(id);
        }

        public static List<int> getListPartnerIdFollowTaskId(int taskId)
        {
            return UsersDAL.getListPartnerIdFollowTaskId(taskId);
        }
        public static DataTable getListUserOfTask(int taskId)
        {
            return UsersDAL.getListUserOfTask(taskId);
        }
    }
}