﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TodoListWebForm.App_Code.Constant;
using TodoListWebForm.App_Code.DAL;
using TodoListWebForm.App_Code.DTO;
using TodoListWebForm.App_Code.DTO.Response;

namespace TodoListWebForm.App_Code.BLL
{
    public class TasksBLL
    {
        public static DataTable GetAllTasks()
        {
            return TasksDAL.GetAllTasks();
        }

        public static List<ResponseGetTaskByUserId> GetAllTasksByUserId(int userId)
        {
            List<TasksDTO> arrTasks = TasksDAL.GetAllTasksByUserId(userId);
            List<ResponseGetTaskByUserId> arrFinal = new List<ResponseGetTaskByUserId>();
            // add partner
            for(int i = 0; i < arrTasks.Count; i++)
            {
                DataTable partners = UsersBLL.getListUserOfTask(arrTasks[i].ID);
                ResponseGetTaskByUserId temp = new ResponseGetTaskByUserId();
                temp.ID = arrTasks[i].ID;
                temp.Title = arrTasks[i].Title;
                temp.startDate = arrTasks[i].startDate;
                temp.endDate = arrTasks[i].endDate;
                temp.Status = arrTasks[i].Status;
                temp.Private = arrTasks[i].Private;
                temp.OwnerId = getOwnerByTaskId(arrTasks[i].ID);
                temp.Partners = partners;

                arrFinal.Add(temp);
            }
            return arrFinal;
        }
        public static List<ResponseGetTaskByUserId> GetAllTasksPublicExcludeUserId(int userId)
        {
            List<TasksDTO> arrTasks = TasksDAL.GetAllTasksPublicExcludeUserId(userId);
            List<ResponseGetTaskByUserId> arrFinal = new List<ResponseGetTaskByUserId>();
            // add partner
            for (int i = 0; i < arrTasks.Count; i++)
            {
                DataTable partners = UsersBLL.getListUserOfTask(arrTasks[i].ID);
                ResponseGetTaskByUserId temp = new ResponseGetTaskByUserId();
                temp.ID = arrTasks[i].ID;
                temp.Title = arrTasks[i].Title;
                temp.startDate = arrTasks[i].startDate;
                temp.endDate = arrTasks[i].endDate;
                temp.Status = arrTasks[i].Status;
                temp.Private = arrTasks[i].Private;
                temp.OwnerId = getOwnerByTaskId(arrTasks[i].ID);
                temp.Partners = partners;

                arrFinal.Add(temp);
            }
            return arrFinal;
        }
        public static List<ResponseGetTaskByUserId> GetAllTasksByUserIdComplyWithDayOfWeek(int userId, int day_of_week,string datetime, bool onlyMine)
        {
            List<TasksDTO> arrTasks = TasksDAL.GetAllTasksByUserIdComplyWithDayOfWeek(userId, day_of_week, datetime, onlyMine);
            List<ResponseGetTaskByUserId> arrFinal = new List<ResponseGetTaskByUserId>();
            // add partner
            for (int i = 0; i < arrTasks.Count; i++)
            {
                DataTable partners = UsersBLL.getListUserOfTask(arrTasks[i].ID);
                ResponseGetTaskByUserId temp = new ResponseGetTaskByUserId();
                temp.ID = arrTasks[i].ID;
                temp.Title = arrTasks[i].Title;
                temp.startDate = arrTasks[i].startDate;
                temp.endDate = arrTasks[i].endDate;
                temp.Status = arrTasks[i].Status;
                temp.Private = arrTasks[i].Private;
                temp.HasRemind = TasksDAL.isTaskHasRemind(arrTasks[i].ID);
                temp.Partners = partners;

                arrFinal.Add(temp);
            }
            return arrFinal;
        }

        public static bool isTaskHasRemind (int taskId)
        {
            return TasksDAL.isTaskHasRemind(taskId);
        }

        public static int CreateTask(TasksDTO task, List<int> arrUser, int ownerId)
        {
            return TasksDAL.CreateTask(task, arrUser, ownerId);
        }

        public static int DeleteTaskById(string id)
        {
            return TasksDAL.DeleteTaskById(id);
        }

        public static TasksDTO getTaskByTaskId(int taskId)
        {
            return TasksDAL.getTaskByTaskId(taskId);
        }

        public static int updateTask(TasksDTO task, List<int> arrPartnerId)
        {
            return TasksDAL.updateTask(task, arrPartnerId);
        }

        public static int createComment(int userId, int taskId, string content, bool isRemind)
        {
            return TasksDAL.createComment(userId, taskId, content, isRemind);
        }
        public static DataTable getCommentByTaskId(int taskId)
        {
            return TasksDAL.getCommentByTaskId(taskId);
        }
        public static void updateStatusOfTask(int taskId, string status)
        {
            TasksDAL.updateStatusOfTask(taskId, status);
        }
        public static void expiringTask()
        {
            TasksDAL.expiringTask();
        }

        public static int getOwnerByTaskId(int taskId)
        {
            return TasksDAL.getOwnerByTaskId(taskId);
        }
    }
}