# Census Management DBMS
<h1>➡️Problem Statement</h1>
Create a census database consisting of detailed information about the citizens of a country.
Information such as: name, aadhar number, date of birth, gender, age and contact details. Every
citizen is part of a family, uniquely identified by its family id. The family has details such as language
spoken, head of family and residential address (consisting of building number, city, state and pin
code). A separate relation is detailed for the amenities that are accessible to the families. The
particulars for amenities are its name, type (e.g. schools, hospitals, recreational centres etc.),
timings and address.<br>
Further specifications about a citizen such as assets owned, education and employment details are
also gathered. A citizen may or may not have had an education. If they have had an education,
information such as their highest qualification, year of graduation and the state and institute in
which they studied are recorded along with whether they are currently enrolled into an institute
or not.<br>
An asset owned by a particular citizen is identified by a unique registration number and details
such as year of purchase, value and its description.
There is another relation for employer details consisting of employer name, address, jobs offered
and contact details. A citizen may be an employee to any of the employers. Employee details are
stored as a distinct combination of email id and username with the sector they are working in,
their salary, role and join date. Logs are kept for the deceased such having cause, date and time of
death along with death certificate number as its fields.<br>
<br>
<h2>➡️DBMS Used</h2>
PostgreSQL also known as Postgres(it is a free and open-source relational database management system (RDBMS))<br>
<br>
<h2>➡️Assumptions</h2>
1. Citizen:👨<br>
● Every citizen has a unique 12 digit identifying number (aadhar number).<br>
2. Family:👨‍👩‍👦<br>
● Every family has a unique family_id.<br>
● Every family has citizens but vice-versa may not be true.<br>
● Every citizen part of the family has a common residential address.<br>
3. Amenities:🏛️<br>
● Every amenity is uniquely identified by its address.<br>
4. Can access:↔<br>
● Details which families can access which amenities.<br>
5. Employer:💼<br>
● Employers have unique names.<br>
● Contacts and Industry fields are multivalued.<br>
6. Employee:🤵<br>
● Every employee has a unique combination of email address and username
(LinkedIn profile)<br>
7. Education:📓<br>
● A citizen may or may not have had an education. If they do, the aadhar number and
highest qualification are considered to be the primary key.<br>
8. Assets:🚗<br>
● Each asset has a unique registration number.<br>
● The combination of the registration number and the asset holder’s aadhar number
is the primary key for this relation.<br>
9. Death:⚰<br>
● Every deceased person has a unique certificate number.<br>
10. Dependant:👶<br>
● Details which citizen is dependant on another citizen<br>
● Value can be null.<br>
<h3>➡️ER Diagrum</h3>
https://docs.google.com/document/d/19i6774V6vZWI-iuIVJTorE74N9EDCL-rEo0Ely9Oy8w/edit?usp=sharing
<h3>➡️Relational Schema</h3>
https://docs.google.com/document/d/1tQJj2CvMnHwNIcVh-bv1a0MZ717DIRZzMYVoEJo9s_g/edit?usp=sharing
