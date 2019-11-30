class Salary:
    def __init__(self, pay, reward):
        self.pay = pay
        self.reward = reward

    def annual_salary(self):
        return (self.pay*12) + self.reward


class Employee:
    def __init__(self, name, position, pay, reward):
        self.name = name
        self.positon = position
        self.final_salary = Salary(pay, reward)

    def get_final_salary(self):
        return self.final_salary.annual_salary()


emp = Employee("names", "dfas", 100, 200)
print(emp.get_final_salary())
