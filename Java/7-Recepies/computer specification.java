public static void main(String[] args) {

    long kilobytes = 1024;
    long megabytes = kilobytes * 1024;
    long gigabytes = megabytes * 1024;

    String nameOS = "os.name";  
    String versionOS = "os.version";  
    String architectureOS = "os.arch";
    System.out.println("\n  Info about OS");
    System.out.println("\nName of the OS: " + 
    System.getProperty(nameOS));
    System.out.println("Version of the OS: " + 
    System.getProperty(versionOS));
    System.out.println("Architecture of The OS: " + 
    System.getProperty(architectureOS));
    Map<String, String> env = System.getenv();
    System.out.println("Environment values");
    for(String key : env.keySet()) {
        System.out.println("K: " + key + " \n\tV: " + env.get(key));
    }
    /* Total number of processors or cores available to the JVM */
    System.out.println("\nAvailable processors (cores): " + 
        Runtime.getRuntime().availableProcessors());

    /* Total amount of free memory available to the JVM */
    System.out.println("Free memory (megabytes): " + 
        Runtime.getRuntime().freeMemory() / (float) megabytes);

    /* This will return Long.MAX_VALUE if there is no preset limit */
    long maxMemory = Runtime.getRuntime().maxMemory();
    /* Maximum amount of memory the JVM will attempt to use */
    System.out.println("Maximum memory (megabytes): " + 
        (maxMemory == Long.MAX_VALUE ? "no limit" : maxMemory / (float) megabytes));

    /* Total memory currently available to the JVM */
    System.out.println("Total memory available to JVM (megabytes): " + 
        Runtime.getRuntime().totalMemory() / (float) megabytes);

    /* Get a list of all filesystem roots on this system */
    File[] roots = File.listRoots();

    /* For each filesystem root, print some info */
    for (File root : roots) {
      System.out.println("\nFile system root: " + root.getAbsolutePath());
      System.out.println("Total space (gigabytes): " + (root.getTotalSpace() / (float) gigabytes));
      System.out.println("Free space (gigabytes): " + (root.getFreeSpace() / (float) gigabytes));
      System.out.println("Usable space (gigabytes): " + (root.getUsableSpace() / (float) gigabytes));

    }
    System.out.println("\n\nProperties:\n------\n");
    System.getProperties().list(System.out);
    }
    }