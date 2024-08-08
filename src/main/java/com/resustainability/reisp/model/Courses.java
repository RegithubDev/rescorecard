package com.resustainability.reisp.model;

import java.util.List;

public class Courses {

private String id,remaining_balance,profit,debit,course_id,course_name,User_id,suscribedCoursesCount,slot_dateOG,course_faculty,course_status,course_cost,discount,created_date,price_after_discount,
created_by,modified_date,modified_by,sus_user_id,status,last_modified;

public String slot_date;

private String user_name;

private String hours;

private String time_slots;

public String time_slot;

private String sus_course_id;

private String user;

private String role;

private String course_completed;

private String description;

private String cart_id;

private String user_id;

private String price;

public String time_and_date;

private String payment_id;

private String module;

private String amount_paid;

private String email_id;

private String remarks;

private String payment_status;

private String payment_intiated_time;

private String payment_completed_time;

private String amount;;

	      private List<Courses> datesList,slotsList;
	      
public String getSuscribedCoursesCount() {
			return suscribedCoursesCount;
		}

		public void setSuscribedCoursesCount(String suscribedCoursesCount) {
			this.suscribedCoursesCount = suscribedCoursesCount;
		}

public List<Courses> getDatesList() {
			return datesList;
		}

		public void setDatesList(List<Courses> datesList) {
			this.datesList = datesList;
		}

		public List<Courses> getSlotsList() {
			return slotsList;
		}

		public void setSlotsList(List<Courses> slotsList) {
			this.slotsList = slotsList;
		}

public String getEmail_id() {
	return email_id;
}

public void setEmail_id(String email_id) {
	this.email_id = email_id;
}

public String getRemaining_balance() {
	return remaining_balance;
}

public void setRemaining_balance(String remaining_balance) {
	this.remaining_balance = remaining_balance;
}

public String getProfit() {
	return profit;
}

public void setProfit(String profit) {
	this.profit = profit;
}

public String getDebit() {
	return debit;
}

public void setDebit(String debit) {
	this.debit = debit;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
}

public String getPayment_id() {
	return payment_id;
}

public void setPayment_id(String payment_id) {
	this.payment_id = payment_id;
}

public String getModule() {
	return module;
}

public void setModule(String module) {
	this.module = module;
}

public String getAmount_paid() {
	return amount_paid;
}

public void setAmount_paid(String amount_paid) {
	this.amount_paid = amount_paid;
}

public String getRemarks() {
	return remarks;
}

public void setRemarks(String remarks) {
	this.remarks = remarks;
}

public String getPayment_status() {
	return payment_status;
}

public void setPayment_status(String payment_status) {
	this.payment_status = payment_status;
}

public String getPayment_intiated_time() {
	return payment_intiated_time;
}

public void setPayment_intiated_time(String payment_intiated_time) {
	this.payment_intiated_time = payment_intiated_time;
}

public String getPayment_completed_time() {
	return payment_completed_time;
}

public void setPayment_completed_time(String payment_completed_time) {
	this.payment_completed_time = payment_completed_time;
}

public String getAmount() {
	return amount;
}

public void setAmount(String amount) {
	this.amount = amount;
}

public String getCart_id() {
	return cart_id;
}

public void setCart_id(String cart_id) {
	this.cart_id = cart_id;
}

public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}

public String getTime_and_date() {
	return time_and_date;
}

public void setTime_and_date(String time_and_date) {
	this.time_and_date = time_and_date;
}

public String getSlot_dateOG() {
	return slot_dateOG;
}

public void setSlot_dateOG(String slot_dateOG) {
	this.slot_dateOG = slot_dateOG;
}

public String getSlot_date() {
	return slot_date;
}

public void setSlot_date(String slot_date) {
	this.slot_date = slot_date;
}

public String getTime_slot() {
	return time_slot;
}

public void setTime_slot(String time_slot) {
	this.time_slot = time_slot;
}

public String getTime_slots() {
	return time_slots;
}

public void setTime_slots(String time_slots) {
	this.time_slots = time_slots;
}

public String getHours() {
	return hours;
}

public void setHours(String hours) {
	this.hours = hours;
}

public String getUser_id() {
	return User_id;
}

public void setUser_id(String user_id) {
	User_id = user_id;
}

public String getLast_modified() {
	return last_modified;
}

public void setLast_modified(String last_modified) {
	this.last_modified = last_modified;
}

public String getPrice_after_discount() {
	return price_after_discount;
}

public void setPrice_after_discount(String price_after_discount) {
	this.price_after_discount = price_after_discount;
}

public String getUser_name() {
	return user_name;
}

public void setUser_name(String user_name) {
	this.user_name = user_name;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getUser() {
	return user;
}

public void setUser(String user) {
	this.user = user;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}

public String getSus_user_id() {
	return sus_user_id;
}

public void setSus_user_id(String sus_user_id) {
	this.sus_user_id = sus_user_id;
}

public String getSus_course_id() {
	return sus_course_id;
}

public void setSus_course_id(String sus_course_id) {
	this.sus_course_id = sus_course_id;
}

public String getCourse_completed() {
	return course_completed;
}

public void setCourse_completed(String course_completed) {
	this.course_completed = course_completed;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public String getCourse_id() {
	return course_id;
}

public void setCourse_id(String course_id) {
	this.course_id = course_id;
}

public String getCourse_name() {
	return course_name;
}

public void setCourse_name(String course_name) {
	this.course_name = course_name;
}

public String getCourse_faculty() {
	return course_faculty;
}

public void setCourse_faculty(String course_faculty) {
	this.course_faculty = course_faculty;
}

public String getCourse_status() {
	return course_status;
}

public void setCourse_status(String course_status) {
	this.course_status = course_status;
}

public String getCourse_cost() {
	return course_cost;
}

public void setCourse_cost(String course_cost) {
	this.course_cost = course_cost;
}

public String getDiscount() {
	return discount;
}

public void setDiscount(String discount) {
	this.discount = discount;
}

public String getCreated_date() {
	return created_date;
}

public void setCreated_date(String created_date) {
	this.created_date = created_date;
}

public String getCreated_by() {
	return created_by;
}

public void setCreated_by(String created_by) {
	this.created_by = created_by;
}

public String getModified_date() {
	return modified_date;
}

public void setModified_date(String modified_date) {
	this.modified_date = modified_date;
}

public String getModified_by() {
	return modified_by;
}

public void setModified_by(String modified_by) {
	this.modified_by = modified_by;
}

@Override
public boolean equals(Object obj) {
    if (obj instanceof Courses) {
    	Courses other = (Courses) obj;
        return  slot_date == other.slot_date;
    }
    return false;
}

}
