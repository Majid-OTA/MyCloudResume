# Argument Reference 
(https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance#argument-reference)

## Required:
The following arguments are supported:

boot_disk - (Required) The boot disk for the instance. Structure is documented below.

machine_type - (Required) The machine type to create.

Note: If you want to update this value (resize the VM) after initial creation, you must set allow_stopping_for_update to true.

Custom machine types can be formatted as custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY_MB, e.g. custom-6-20480 for 6 vCPU and 20GB of RAM.

There is a limit of 6.5 GB per CPU unless you add extended memory. You must do this explicitly by adding the suffix -ext, e.g. custom-2-15360-ext for 2 vCPU and 15 GB of memory.

name - (Required) A unique name for the resource, required by GCE. Changing this forces a new resource to be created.

zone - (Optional) The zone that the machine should be created in. If it is not provided, the provider zone is used.

network_interface - (Required) Networks to attach to the instance. This can be specified multiple times.
