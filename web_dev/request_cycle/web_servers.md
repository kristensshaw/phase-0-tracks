What are some of the key design philosophies of the Linux operating system?
*The system itself is designed with a very open-ended, feature-minded approach*

*With Linux, you can throw out the entire concept of organized development, source control systems, structured bug reporting, or statistical analysis. Linux is, and more than likely always will be, a hacker's operating system.*

*Linux is for develoopers as much as anyone else. Linux development is meant to develop a free implementation of UNIX.*

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
*Unit sold by an Internest host service that runs a version or copy of a particular operating system that can be available to onsumers and can have access to using or dwonloading software that is compatible and runs on that particular operating system. A monetary advantage is that it is cheaper to use a vps thatn a designated host plan that usually involved hardware and servers. They are generally more stable and kept up and the resposibility is not on you. You have more general control in comparison to shared hosting, etc*


Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

*On Linux, the Root user is equivalent to the Administrator user on Windows.ou are much more prone to mistakes or software bugs. That program which deleted files as a bug? If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks).If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files. Similarly, a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in /bin and add backdoors, mess with files in /etc and make the system unbootable etc...
You can be victim of your own stupidity. That rm -rf * you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.*