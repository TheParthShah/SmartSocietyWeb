

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NoticeData.aspx.cs" Inherits="ViewNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .panel-body{
            padding : 5px;
        }

        .title-notice{
            font-weight: bolder;
            font-size: 25px;
            
        }
    </style>
   <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
      <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
      <li class="active"><i class="fa fa-building"></i>Society Profile</li>
   </ul>
    <div class="row text-sm wrapper">
                    <div class="col-sm-5 m-b-xs">
                        <select class="input-sm form-control input-s-sm inline">
                            <option value="0">Bulk action</option>
                            <option value="1">Delete selected</option>
                            <option value="2">Bulk edit</option>
                            <option value="3">Export</option>
                        </select>
                        <button class="btn btn-sm btn-default">Apply</button>
                    </div>
                    <div class="col-sm-4 m-b-xs">
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-sm btn-default active">
                                <input name="options" id="option1" type="radio">
                                Day
                            </label>
                            <label class="btn btn-sm btn-default">
                                <input name="options" id="option2" type="radio">
                                Week
                            </label>
                            <label class="btn btn-sm btn-default">
                                <input name="options" id="option2" type="radio">
                                Month
                            </label>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="input-group">
                            <input class="input-sm form-control" placeholder="Search" type="text">
                            <span class="input-group-btn">
                                <button class="btn btn-sm btn-default" type="button">Go!</button>
                            </span>
                        </div>
                    </div>
                </div>
   <section class="panel panel-default">
      
      <div class="panel-body">
         <section class="scrollable wrapper">
            <div class="timeline">
               <article class="timeline-item active">
                  <div class="timeline-caption">
                     <div class="panel bg-primary lter no-borders">
                        <div class="panel-body">
                           <h3 class="title-notice">Notices</h3>
                        </div>
                     </div>
                  </div>
               </article>
               <article class="timeline-item">
                  <div class="timeline-caption">
                     <div class="panel panel-default">
                        <div class="panel-body">
                           <span class="arrow left"></span> <span class="timeline-icon"><i class="fa fa-bullhorn time-icon bg-danger"></i></span> <span class="timeline-date">Notice Time</span> 
                           <h5> <span>Notice Title</span> Recepient </h5>
                            <p>Description</p>
                        </div>
                     </div>
                  </div>
               </article>
                <article class="timeline-item alt">
                  <div class="timeline-caption">
                     <div class="panel panel-default">
                        <div class="panel-body">
                           <span class="arrow left"></span> <span class="timeline-icon"><i class="fa fa-bullhorn time-icon bg-primary"></i></span> <span class="timeline-date">Notice Time</span> 
                           <h5> <span>Notice Title</span> Recepient </h5>
                            <p>Description</p>
                        </div>
                     </div>
                  </div>
               </article>
               
               <div class="timeline-footer"><a href="#"><i class="fa fa-plus time-icon inline-block bg-dark"></i></a></div>
            </div>
         </section>
      </div>
   </section>
</asp:Content>

