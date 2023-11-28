<!-- Edit modal content -->
<div id="addModal-<?php echo e($row->id); ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <form class="needs-validation" novalidate action="<?php echo e(route($route.'.store')); ?>" method="post" enctype="multipart/form-data">
                <?php echo csrf_field(); ?>

                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel"><?php echo e(__('modal_add')); ?> <?php echo e($title); ?></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <!-- Form Start -->
                    <input type="hidden" name="member_id" value="<?php echo e($row->id); ?>">

                    <div class="form-group">
                        <label for="library_id" class="form-label"><?php echo e(__('field_library_id')); ?> <span>*</span></label>
                        <input type="text" class="form-control" name="library_id" id="library_id" value="<?php echo e(old('library_id')); ?>" required>

                        <div class="invalid-feedback">
                            <?php echo e(__('required_field')); ?> <?php echo e(__('field_library_id')); ?>

                        </div>
                    </div>
                    <!-- Form End -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fas fa-times"></i> <?php echo e(__('btn_close')); ?></button>
                    <button type="submit" class="btn btn-success"><i class="fas fa-check"></i> <?php echo e(__('btn_save')); ?></button>
                </div>
            </form>
        </div>
    </div>
</div><?php /**PATH C:\xampp\htdocs\HorizonCollege\resources\views/admin/library-student/create.blade.php ENDPATH**/ ?>