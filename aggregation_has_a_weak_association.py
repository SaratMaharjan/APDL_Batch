class Salary:
    def __init__(self, pay, reward):
        self.pay = pay
        self.reward = reward

    def annual_salary(self):
        return (self.pay*12) + self.reward


class Employee:
    def __init__(self, name, position, sal):
        self.name = name
        self.positon = position

        self.positon = position
        self.final_salary = sal

    def get_final_salary(self):
        return self.final_salary.annual_salary()


sal = Salary(100, 200)
emp = Employee("names", "dfas", sal)
print(emp.get_final_salary())
