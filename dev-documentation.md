Documentation Structure Plan

1. Introduction
   1.1 Goal
   1.2 Objectives
2. Description of the Model
   2.1 Data Ingestion & Integration
   2.2 Data Storage & Management
   2.3 AI-Driven Insights & Predictive Analytics
   2.4 Business Intelligence & Visualization
   2.5 Security & Compliance
3. Approach: Software Development Models
   3.1 Comparison of Development Models
   3.2 Selected Model
   3.3 Alternative Approach
   3.4 Justification for Not Choosing Other Models
   3.5 Model Benefits
   3.6 Benefits of the Selected Model
4. Methodologies
   4.1 Comparison of Software Development Methodologies
   4.1.1 Comparison Table of Methodologies
   4.2 Selected Methodology
   4.2.1 Benefits
5. Constraints
   5.1 Technical Constraints
   5.2 Security & Compliance Constraints
   5.3 Organizational & Cost Constraints
6. Quality Attributes
   6.1 Key Attributes (Extensibility, Maintainability, Security and Compliance, Scalability, Reliability and Performance)
   6.2 DevOps
7. Diagrams
   7.1 Use Case Diagram
   7.2 Architecture Diagram
   7.3 Class Diagram
   7.4 State Transition Diagram

## 1. Introduction

### 1.1 Goal

The primary goal of the RestoSam system is to revolutionize the restaurant dining experience by eliminating traditional pain points such as long waits for service, inefficient table booking, and suboptimal food ordering processes. The system aims to provide a seamless, technology-driven solution that enhances customer satisfaction while improving operational efficiency for restaurants.

### 1.2 Objectives

The objectives of the RestoSam system include streamlining restaurant operations through automated processes for food ordering, payment processing, and waiter notification systems to reduce wait times and improve service quality. The system aims to enhance customer experience by enabling customers to pre-order food and book tables in advance, view interactive restaurant maps, access multimedia menus, and receive personalized recommendations based on their preferences. Resource management is optimized through systems for automatic order reassignment to minimize food waste and provide real-time table availability management. The system is designed to handle 150+ concurrent users per restaurant during peak hours, with the ability to scale from 1 restaurant at launch to 10 restaurants within several months. Security and compliance are maintained through robust measures and adherence to Russian payment systems and accessibility standards. Finally, the system facilitates business intelligence through analytics dashboards and preference mapping systems to help restaurants make data-driven decisions and provide personalized customer experiences.

---

## 2. Description of the Model

### 2.1 Data Ingestion & Integration

The RestoSam system employs a comprehensive data ingestion pipeline that collects data from multiple sources including customer data such as user profiles, order history, preferences, and behavioral patterns collected through mobile and web applications. Restaurant data includes menu items, pricing, availability, table layouts, and operational metrics from restaurant management systems. Payment data consists of transaction records from integrated payment providers such as SBP, Mir, Visa, and other Russian banking systems. Real-time data includes live table availability, order status updates, and waiter notifications. Third-party APIs provide integration with mapping services and social media platforms for enhanced functionality. Data integration is achieved through RESTful APIs and gRPC protocols, ensuring real-time synchronization across all system components.

### 2.2 Data Storage & Management

The system utilizes a hybrid data storage architecture with PostgreSQL serving as the primary database for structured data including user accounts, orders, restaurant information, and transactional data. MongoDB provides flexible storage for menu items, customer preferences, and multimedia content. Redis serves as the cache layer for high-performance caching of frequently accessed data such as table availability and menu items. Automated backup systems, data validation, and integrity checks ensure data consistency and reliability.

### 2.3 AI-Driven Insights & Predictive Analytics

The system incorporates machine learning algorithms to provide intelligent recommendations through preference mapping that tracks user behavior to create detailed preference profiles based on order history, ratings, and interaction patterns. The recommendation engine offers AI-powered suggestions for food items based on past orders, dietary preferences, and seasonal availability. Predictive analytics enables forecasting of restaurant occupancy, popular menu items, and optimal staffing levels. Dynamic menu adaptation provides real-time menu updates based on ingredient availability and customer demand patterns.

### 2.4 Business Intelligence & Visualization

Business intelligence capabilities include comprehensive reporting tools for restaurant administrators to track performance metrics, customer behavior, and operational efficiency. Interactive visualizations display revenue trends, popular dishes, peak hours, and customer demographics. Real-time monitoring provides live dashboards showing current table occupancy, order status, and service performance. Custom reporting enables flexible report generation for business planning and decision-making.

### 2.5 Security & Compliance

The security framework encompasses multi-factor authentication with support for email/password and social media login through Yandex and Google. Payment security ensures compliance with PCI DSS standards and integration with secure Russian payment systems. Data encryption provides end-to-end encryption for sensitive customer data and payment information. Access control implements role-based access for different user types including customers, restaurant staff, and administrators. Audit logging provides comprehensive logging of all system activities for compliance and security monitoring.

---

## 3. Approach: Software Development Models

### 3.1 Comparison of Development Models

| Model         | Time | Quality | Cost | Docs | Extens. | Scale | Sec/Comp | Total | Avg           |
| ------------- | ---- | ------- | ---- | ---- | ------- | ----- | -------- | ----- | ------------- |
| Build-and-Fix | 6    | 3       | 3    | 1    | 3       | 2     | 2        | 20    | **2.9** |
| Waterfall     | 3    | 6       | 4    | 9    | 4       | 5     | 7        | 38    | **5.4** |
| Spiral        | 5    | 8       | 4    | 8    | 7       | 7     | 8        | 47    | **6.7** |
| Incremental   | 8    | 9       | 7    | 7    | 9       | 8     | 9        | 57    | **8.1** |
| Rapid Proto.  | 9    | 7       | 6    | 5    | 6       | 6     | 6        | 45    | **6.4** |

Abbrev: Docs = Documentation, Extens. = Extensibility, Scale = Scalability, Sec/Comp = Security & Compliance; scores 0–10 (higher is better).

The comparison shows that Incremental provides high flexibility with changes between increments, risks addressed per increment, testing after each increment, regular customer feedback, moderate documentation, and fast time‑to‑market for a working MVP—making it the best fit for RestoSam. Waterfall offers clear, document‑driven discipline but low flexibility, testing largely at the end, and longer time to market; it is suitable when requirements are fixed and compliance documentation is paramount. Spiral emphasizes strong risk management and high quality via iterative elaboration, but adds process overhead and cost, so it fits large internal projects with high risk. Rapid Prototyping validates requirements very quickly and aligns to customer needs early, but it can encourage throwaway or shortcut code and lighter documentation, which may hurt maintainability and compliance if not controlled. Build‑and‑Fix may be fast for trivial tasks, but it is unsuitable for a non‑trivial, compliant system due to poor documentation, quality, and security control.

### 3.2 Selected Model

The Incremental Development Model has been selected for the RestoSam project.

### 3.3 Alternative Approach

An alternative approach would be the Waterfall Model, which follows a sequential design process where progress flows downward through phases like conception, initiation, analysis, design, construction, testing, implementation, and maintenance.

### 3.4 Justification for Not Choosing Other Models

The Waterfall Model was not selected because it requires complete requirements upfront, which is challenging for restaurant systems where user needs frequently change. Testing only occurs at the end of development, increasing risk of major issues. No working software is delivered until the final phase, delaying business value realization. Changes are expensive and difficult to implement once a phase is complete.

### 3.5 Model Benefits

The Incremental Model provides several advantages including early delivery of value where basic functionality like table booking and ordering can be deployed early. Risk reduction occurs as issues are identified and resolved in smaller increments. Flexibility allows changes to be incorporated based on user feedback. Stakeholder satisfaction is maintained through regular deliveries that keep engagement and allow for course corrections.

### 3.6 Benefits of the Selected Model

The selected Incremental Model provides business value as restaurants can start using core booking functionality while additional features are developed. Quality assurance is ensured as each increment undergoes testing, guaranteeing quality at every stage. The model accommodates the dynamic nature of restaurant operations and customer preferences through adaptability. Cost control is achieved as budget and resources can be allocated more efficiently across increments.

---

## 4. Methodologies

### 4.1 Comparison of Software Development Methodologies

#### 4.1.1 Comparison Table of Methodologies

##### (a) RUP

| Parameter                        | Score (1 to 5) | Justification                                                                                          |
| -------------------------------- | -------------- | ------------------------------------------------------------------------------------------------------ |
| Flexibility and Adaptability     | 3              | Well-structured and adaptable through phases, but heavier governance slows changes compared to Agile.  |
| Documentation Management         | 5              | Emphasizes comprehensive artifacts (vision, SRS, architecture docs), ideal for auditability.           |
| Handling Regulatory Requirements | 5              | Phase gates and required evidence support PCI DSS and security controls.                               |
| Team Collaboration               | 3              | Clear roles/processes support collaboration, but ceremony is higher and slower for a 6–9 person team. |

##### (b) Scrum

| Parameter                        | Score (1 to 5) | Justification                                                                                              |
| -------------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------- |
| Flexibility and Adaptability     | 5              | Time-boxed sprints and backlog refinement handle changing restaurant requirements and MVP evolution.       |
| Documentation Management         | 3              | Just-enough documentation; compliance needs can be covered via Definition of Done templates.               |
| Handling Regulatory Requirements | 4              | DevSecOps in the sprint (threat modeling, SAST/DAST, evidence in tickets) supports PCI DSS integrations.   |
| Team Collaboration               | 5              | Strong roles (PO, SM, Dev Team), frequent ceremonies, and transparency fit the 6–9 cross-functional team. |

##### (c) XP

| Parameter                        | Score (1 to 5) | Justification                                                                                            |
| -------------------------------- | -------------- | -------------------------------------------------------------------------------------------------------- |
| Flexibility and Adaptability     | 5              | Embraces change with continuous planning and small releases.                                             |
| Documentation Management         | 2              | Prefers code and tests over documents; may be insufficient for compliance trails.                        |
| Handling Regulatory Requirements | 3              | High engineering rigor (TDD, CI) helps quality, but lacks required documentation by default.             |
| Team Collaboration               | 4              | Pair programming and on-site customer improve feedback, but may stress availability and team preference. |

##### (d) Kanban

| Parameter                        | Score (1 to 5) | Justification                                                                               |
| -------------------------------- | -------------- | ------------------------------------------------------------------------------------------- |
| Flexibility and Adaptability     | 4              | Continuous flow with WIP limits adapts well, but lacks sprint cadence for fixed milestones. |
| Documentation Management         | 3              | Process-light; docs discipline must be enforced externally.                                 |
| Handling Regulatory Requirements | 3              | Can include compliance checks in the workflow, but provides fewer built-in control points.  |
| Team Collaboration               | 4              | Visual boards and pull-based work enhance collaboration; roles are lightweight.             |

#### Overall Methodology Ratings

| Methodology | Pros                                                                                                        | Cons                                                                          | Final Score    |
| ----------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | -------------- |
| RUP         | - Strong documentation and governance<br />- Excellent for regulated environments and audit trails          | - Heavier process for a 6–9 team<br />- Slower to adapt, higher overhead     | **4.0**  |
| Scrum       | - Highest adaptability and focus on working increments<br />- Excellent team collaboration and transparency | - Requires discipline to maintain compliance documentation within sprints     | **4.25** |
| XP          | - Strong engineering practices (TDD, refactoring, CI) improve quality<br />- Rapid feedback                 | - Minimal documentation and on-site customer expectations may not be feasible | **3.5**  |
| Kanban      | - Great visibility and flow; ideal for ops/maintenance and continuous delivery                              | - Lacks time-boxing; weaker for fixed milestones without additional structure | **3.5**  |

Taken together, Scrum best matches RestoSam’s needs: a small cross‑functional team delivering a working MVP quickly, adapting to changing restaurant and payment requirements, and integrating DevSecOps activities each sprint to satisfy PCI‑DSS and security evidence. RUP remains a viable choice when auditability must dominate, but its ceremony would slow early iterations. XP provides superb code quality but its documentation lightness and on‑site customer expectations are less practical here. Kanban complements Scrum for production support and DevOps flow but, by itself, offers less predictability for milestone‑driven delivery.

### 4.2 Selected Methodology

Scrum has been selected as the primary software development methodology for the RestoSam project.

#### 4.2.1 Benefits

The benefits of Scrum include adaptive planning through time-boxed sprints of 2-4 weeks that allow the team to adapt to changing restaurant requirements and customer feedback. Clear roles and responsibilities are provided through distinct roles including Product Owner, Scrum Master, and Development Team ensuring accountability and efficient decision-making. Incremental delivery is achieved through regular sprint deliveries that ensure working software increments providing immediate business value to restaurant operations. Transparency is maintained through daily stand-ups, sprint reviews, and retrospectives for continuous improvement. The methodology supports cross-functional teams with the diverse skill set required for frontend, backend, mobile, DevOps, and QA development in a multi-platform restaurant system. Risk management is enhanced through short sprints and frequent feedback loops that help identify and mitigate risks early in the development process.

---

## 5. Constraints

### 5.1 Technical Constraints

The technical constraints include payment integration that must work with Russian payment systems such as SBP, Mir, Visa, and major banking providers. Platform support requires native iOS and Android apps, responsive web interface, and web-based admin dashboard. Real-time processing is essential for handling order updates, table booking changes, and waiter notifications. The architecture must support 150+ concurrent users per restaurant during peak hours. Third-party API restrictions require all APIs to be accessible from Russia with appropriate localization. Performance requirements demand response time optimization for mobile networks and varying internet speeds. Data synchronization must occur in real-time across mobile, web, and backend systems.

### 5.2 Security & Compliance Constraints

Security and compliance constraints include data protection compliance with Russian regulations and international standards. Payment security requires PCI DSS compliance for handling payment information. User privacy demands secure handling of personal data, location information, and payment details. Access control implements role-based permissions for customers, restaurant staff, and administrators. Audit requirements necessitate comprehensive logging for regulatory compliance and security monitoring. Encryption standards require end-to-end encryption for sensitive data transmission and storage.

### 5.3 Organizational & Cost Constraints

Organizational and cost constraints include a team size of 6-9 members with specific roles such as Team Lead, Scrum Master, Product Manager, Web Frontend, 2 Backend developers, Mobile developer, DevOps, SRE, and QA. The timeline requires launching with 1 restaurant and scaling to 10 restaurants within several months. Budget limitations require a cost-effective technology stack while maintaining quality and scalability. The business culture demands an innovative environment with low bureaucracy requiring agile decision-making. Resource availability is limited for specialized talent in restaurant technology domain. Market competition requires differentiation from existing restaurant booking and ordering systems.

---

## 6. Quality Attributes

### 6.1 Key Attributes

Extensibility is a critical quality attribute where the system architecture supports easy addition of new features and integrations through modular design allowing independent development of mobile, web, and backend components. Plugin architecture supports payment providers and third-party services. API-first design enables future integrations such as delivery services and loyalty programs. Maintainability is ensured through clean code practices with comprehensive documentation, automated testing suites ensuring reliability during updates, version control and CI/CD pipelines for continuous deployments, and modular architecture reducing coupling between components. Security and compliance include multi-factor authentication and secure session management, encrypted data transmission and storage, regular security audits and compliance monitoring, and role-based access control with principle of least privilege. Scalability provides horizontal scaling capability from 1 to 10+ restaurants, microservices architecture supporting independent scaling of components, database sharding and caching strategies for performance, and load balancing and auto-scaling capabilities. Reliability and performance maintain 99.9% uptime requirement for restaurant operations, response times under 2 seconds for critical operations, fault-tolerant design with automatic failover mechanisms, and performance monitoring and alerting systems.

### 6.2 DevOps

The DevOps implementation includes continuous integration through automated build and testing pipelines. Continuous deployment provides automated deployment to staging and production environments. Infrastructure as code ensures version-controlled infrastructure definitions. Monitoring and logging provide comprehensive application and infrastructure monitoring. Security integration implements DevSecOps practices with automated security scanning. Collaboration is achieved through cross-functional team practices and shared responsibility for quality.

---

## 7. Diagrams

### 7.1 Use Case Diagram

![1761688088972](image/documentation/1761688088972.png)

This use case diagram shows three actors (Guest, Kitchen, Administrator) and their interactions with the system. Guests browse restaurants, sign up/sign in, book tables and manage bookings, pay for orders (with credit card and payment-system options as extensions of the core payment use case), leave reviews, get advice on choosing dishes, and receive status notifications such as “order in process” and “order is ready.” Kitchen staff take and view orders, update statuses and mark orders ready (triggering readiness notifications), and manage ingredient availability by marking menu items unavailable and planning stock based on pre‑order notifications. Administrators maintain the room layout, menu, prices and working time, resolve controversial cases, and track KPIs. Associations indicate who performs which actions, while include/extend relationships show payment options and the notification flow attached to order management.

### 7.2 Architecture Diagram

TODO: ADD IMAGE

![1761672498075](image/documentation/7.2.Architecture-Diagram.png)

The system follows a microservices architecture with a frontend layer consisting of React or Vue.js web application and React Native mobile applications for iOS and Android. The API Gateway handles request routing and authentication with rate limiting and security. Microservices include User Management Service, Order Management Service, Restaurant Management Service, Payment Service, Notification Service, and Recommendation Engine Service. The data layer uses PostgreSQL for primary data, MongoDB for documents and media, and Redis for caching and sessions. Infrastructure includes Docker containers, Kubernetes orchestration, and cloud deployment on AWS or GCP.

### 7.3 Class Diagram

![1761755006121](image/dev-documentation/1761755006121.png)

This diagram shows the core domain of RestoSam. Users are abstract and specialized as Customer, Staff, and Admin. Customers place Orders composed of OrderItems, optionally tied to a Table, and each Order has a Payment. Payments follow a strategy pattern via the PaymentMethod interface with concrete methods for SBP, Mir, and Visa. Restaurants aggregate Tables, MenuItems, and InventoryItems; Staff operate on KitchenTickets produced from Orders to drive preparation and readiness. Users receive Notifications, and Customers write Reviews that belong to Restaurants. AuthSession represents user sessions. Methods capture typical actions such as sign‑in, reserving tables, adding items, marking orders paid/ready, and authorizing or refunding payments; associations include cardinalities and a mix of generalization, realization, composition/aggregation, and dependencies.

### 7.4 State Transition Diagram

![1761750369440](image/documentation/1761750369440.png)

This diagram depicts three parallel lifecycles. For orders: an order is created by the user, then paid, then received and accepted by the kitchen, then being prepared, then marked ready (cooked), then received by the client, then transferred to the table, and finally closed. The guest journey mirrors this with selecting an order, paying, waiting, arriving to pick it up, and confirming receipt. For restaurants: a restaurant starts open, can become overloaded as occupancy grows beyond planned capacity, shifts can set it to closed, and rule violations from the open or overloaded states move the restaurant to a banned state. For users and authorization: an unauthorized user becomes authorized after a successful sign in. Transitions are triggered by guest actions, kitchen updates, occupancy changes, and policy violations, and the system sends notifications at key steps such as order in process and order ready.

### 7.5 Sequence Diagram

![1761753135310](image/dev-documentation/1761753135310.png)

This sequence diagram illustrates the end‑to‑end processing of an order across four participants: the guest using the client app, the order service, the kitchen subsystem, and the administrator console. The guest pays for the order and the order service handles the payment and records the outcome; once payment succeeds, the order service transfers the order for execution to the kitchen. The kitchen checks the amount of required products and either notifies a lack of products for resolution or proceeds to preparation. The administrator maintains the menu and product availability in parallel, which influences kitchen checks and prevents unavailable items from being ordered again. When preparation completes, the kitchen marks the order as ready and the order service sends a notification to the guest about the updated status. The interaction emphasizes payment confirmation before fulfillment, ingredient verification to avoid stock issues, and timely notifications that keep the guest informed.
