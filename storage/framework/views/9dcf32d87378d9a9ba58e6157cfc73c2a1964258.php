    <!-- Edit modal content -->
    <div id="editModal-<?php echo e($row->id); ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
              <form class="needs-validation" novalidate action="<?php echo e(route($route.'.update', $row->id)); ?>" method="post" enctype="multipart/form-data">
                <?php echo csrf_field(); ?>
                <?php echo method_field('PUT'); ?>

                <div class="modal-header">
                    <h5 class="modal-title" id="myModalLabel"><?php echo e(__('modal_edit')); ?> <?php echo e($title); ?></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <!-- Form Start -->
                    <div class="form-group">
                        <label for="title" class="form-label"><?php echo e(__('field_title')); ?> <span>*</span></label>
                        <input type="text" class="form-control" name="title" id="title" value="<?php echo e($row->title); ?>" required>

                        <div class="invalid-feedback">
                          <?php echo e(__('required_field')); ?> <?php echo e(__('field_title')); ?>

                        </div>
                    </div>

                    <div class="form-group">
                        <label for="program"><?php echo e(__('field_assign')); ?> <?php echo e(__('field_program')); ?> <span>*</span></label>

                        <?php ${'items'.$row->id} = 0; ?>
                        <?php $__currentLoopData = $programs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $program): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <br/><br/>
                        <span class="badge badge-pill badge-primary"><?php echo e($key + 1); ?>. <?php echo e($program->title); ?></span>
                        <hr/><br/>
                        <?php $__currentLoopData = $program->semesters->where('status', 1)->sortBy('title'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $semester): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <input type="text" hidden name="programs[]" value="<?php echo e($program->id); ?>">
                        <input type="text" hidden name="semesters[]" value="<?php echo e($semester->id); ?>">
                        <div class="checkbox d-inline">
                            <input type="checkbox" name="items[]" id="semester-<?php echo e($key); ?>-<?php echo e($row->id); ?>-<?php echo e($semester->id); ?>" value="<?php echo e(${'items'.$row->id} = ${'items'.$row->id} + 1); ?>"

                            <?php $__currentLoopData = $row->semesterPrograms; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $selected_program): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($selected_program->semester_id == $semester->id && $selected_program->program_id == $program->id): ?> checked <?php endif; ?> 
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            >
                            <label for="semester-<?php echo e($key); ?>-<?php echo e($row->id); ?>-<?php echo e($semester->id); ?>" class="cr"><?php echo e($semester->title); ?></label>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        <div class="invalid-feedback">
                          <?php echo e(__('required_field')); ?> <?php echo e(__('field_program')); ?>

                        </div>
                    </div>

                    <div class="form-group">
                        <label for="status" class="form-label"><?php echo e(__('select_status')); ?></label>
                        <select class="form-control" name="status" id="status">
                            <option value="1" <?php if( $row->status == 1 ): ?> selected <?php endif; ?>><?php echo e(__('status_active')); ?></option>
                            <option value="0" <?php if( $row->status == 0 ): ?> selected <?php endif; ?>><?php echo e(__('status_inactive')); ?></option>
                        </select>
                    </div>
                    <!-- Form End -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fas fa-times"></i> <?php echo e(__('btn_close')); ?></button>
                    <button type="submit" class="btn btn-success"><i class="fas fa-check"></i> <?php echo e(__('btn_update')); ?></button>
                </div>

              </form>
            </div>
        </div>
    </div><?php /**PATH C:\xampp\htdocs\UniversitySystem\resources\views/admin/section/edit.blade.php ENDPATH**/ ?>