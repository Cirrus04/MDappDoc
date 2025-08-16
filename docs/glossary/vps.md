### What is a VPS?
A VPS (**Virtual Private Server**) is essentially a private, dedicated server that exists in a virtual environment.
Imagine a very powerful physical server located in a hosting provider's data center (like **Strato**). This single physical server is partitioned into multiple, completely isolated virtual machines. Each of these virtual machines is a VPS.

### What does this mean for you?
When you rent a VPS, you get:

- **Guaranteed Resources**: You are allocated a guaranteed amount of processing power (CPU), memory (RAM), and disk space that is dedicated entirely to you and is not shared with other customers on the same physical machine.
- **Full Control (Root Access)**: You get full "root" access, which means you have complete administrative control over your server. You can install your choice of operating system (typically a Linux distribution like Ubuntu or CentOS), install any software you need (like Apache, MySQL, PHP, Python), and configure it exactly to your specifications.
- **Isolation**: Your VPS is completely isolated from other VPS instances on the same physical hardware. The activities of another customer, such as a crash or a security incident, will not affect your server.
- **Dedicated IP Address**: You typically receive one or more dedicated IP addresses.

### VPS vs. Shared Hosting:
- **Shared Hosting** is like renting a room in a large dormitory. You share the kitchen, bathroom, and common areas (CPU, RAM) with everyone else. It's inexpensive, but you can be affected by your neighbors, and you have limited ability to customize your room (install software).
- A **VPS** is like renting your own apartment in an apartment building. You have your own kitchen and bathroom (dedicated resources) and can furnish it however you like (full control), but you still share the main building (physical server) with others.

### Why is a VPS used for this application?
This application requires a specific environment with Apache, a precise version of PHP, a MySQL database, and the ability to run scheduled scripts (cron). A VPS provides the complete control and dedicated resources necessary to reliably run and maintain such a custom application.