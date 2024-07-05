package employeeManagement1.form.employee.model;

public class employee {
    private int id;
    private String fname;
    private String lname;
    private String salary;
    private int age;
    
    public employee() {
    	
    }

    // Getters and Setters
    public String getFname() {
        return fname;
    }

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

	@Override
	public String toString() {
		return "Employee [id=" + id + ", fname=" + fname + ", lname=" + lname + ", salary=" + salary + ", age=" + age
				+ "]";
	}
    
}