
<?php $__env->startSection('title', $title); ?>
<?php $__env->startSection('content'); ?>

<!-- Start Content-->
<div class="main-body">
    <div class="page-wrapper">
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5><?php echo e($title); ?></h5>
                    </div>
                    <div class="card-block">
                        <!-- [ Data table ] start -->
                        <div class="table-responsive">
                            <table id="basic-table" class="display table nowrap table-striped table-hover" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th><?php echo e(__('field_student_id')); ?></th>
                                        <th><?php echo e(__('field_name')); ?></th>
                                        <th><?php echo e(__('field_leave_date')); ?></th>
                                        <th><?php echo e(__('field_days')); ?></th>
                                        <th><?php echo e(__('field_apply_date')); ?></th>
                                        <th><?php echo e(__('field_status')); ?></th>
                                        <th><?php echo e(__('field_action')); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($key + 1); ?></td>
                                        <td>
                                            <?php if(isset($row->student->student_id)): ?>
                                            <a href="<?php echo e(route('admin.student.show', $row->student->id)); ?>">
                                            #<?php echo e($row->student->student_id ?? ''); ?>

                                            </a>
                                            <?php endif; ?>
                                        </td>
                                        <td><?php echo e($row->student->first_name ?? ''); ?> <?php echo e($row->student->last_name ?? ''); ?></td>
                                        <td>
                                            <?php if(isset($setting->date_format)): ?>
                                                <?php echo e(date($setting->date_format, strtotime($row->from_date))); ?>

                                            <?php else: ?>
                                                <?php echo e(date("Y-m-d", strtotime($row->from_date))); ?>

                                            <?php endif; ?>
                                            -
                                            <?php if(isset($setting->date_format)): ?>
                                                <?php echo e(date($setting->date_format, strtotime($row->to_date))); ?>

                                            <?php else: ?>
                                                <?php echo e(date("Y-m-d", strtotime($row->to_date))); ?>

                                            <?php endif; ?>
                                        </td>
                                        <td><?php echo e((int)((strtotime($row->to_date) - strtotime($row->from_date))/86400) + 1); ?></td>
                                        <td>
                                            <?php if(isset($setting->date_format)): ?>
                                                <?php echo e(date($setting->date_format, strtotime($row->apply_date))); ?>

                                            <?php else: ?>
                                                <?php echo e(date("Y-m-d", strtotime($row->apply_date))); ?>

                                            <?php endif; ?>
                                        </td>
                                        <td>
                                            <?php if( $row->status == 1 ): ?>
                                            <span class="badge badge-pill badge-success"><?php echo e(__('status_approved')); ?></span>
                                            <?php elseif( $row->status == 2 ): ?>
                                            <span class="badge badge-pill badge-danger"><?php echo e(__('status_rejected')); ?></span>
                                            <?php else: ?>
                                            <span class="badge badge-pill badge-primary"><?php echo e(__('status_pending')); ?></span>
                                            <?php endif; ?>
                                        </td>
                                        <td>
                                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check($access.'-edit')): ?>
                                            <div class="dropdown show d-inline-block">
                                                <a class="btn btn-secondary btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-question"></i>
                                                </a>

                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                    <a class="dropdown-item" href="#" onclick="document.getElementById('approveLeave_<?php echo e($row->id); ?>').submit();"><?php echo e(__('status_approved')); ?></a>
                                                    <a class="dropdown-item" href="#" onclick="document.getElementById('rejectLeave_<?php echo e($row->id); ?>').submit();"><?php echo e(__('status_rejected')); ?></a>
                                                </div>

                                                <form action="<?php echo e(route($route.'.status', $row->id)); ?>" method="post" id="approveLeave_<?php echo e($row->id); ?>">
                                                    <?php echo csrf_field(); ?>
                                                    <input type="hidden" name="status" value="1">
                                                </form>
                                                <form action="<?php echo e(route($route.'.status', $row->id)); ?>" method="post" id="rejectLeave_<?php echo e($row->id); ?>">
                                                    <?php echo csrf_field(); ?>
                                                    <input type="hidden" name="status" value="2">
                                                </form>
                                            </div>
                                            <?php endif; ?>

                                            <?php if(is_file('uploads/'.$path.'/'.$row->attach)): ?>
                                            <a href="<?php echo e(asset('uploads/'.$path.'/'.$row->attach)); ?>" class="btn btn-icon btn-dark btn-sm" download><i class="fas fa-download"></i></a>
                                            <?php endif; ?>

                                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check($access.'-edit')): ?>
                                            <button type="button" class="btn btn-icon btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editModal-<?php echo e($row->id); ?>">
                                                <i class="far fa-edit"></i>
                                            </button>
                                            <!-- Include Edit modal -->
                                            <?php echo $__env->make($view.'.edit', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                            <?php endif; ?>

                                            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check($access.'-delete')): ?>
                                            <button type="button" class="btn btn-icon btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteModal-<?php echo e($row->id); ?>">
                                                <i class="fas fa-trash-alt"></i>
                                            </button>
                                            <!-- Include Delete modal -->
                                            <?php echo $__env->make('admin.layouts.inc.delete', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- [ Data table ] end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- [ Main Content ] end -->
    </div>
</div>
<!-- End Content-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\UniversitySystem\resources\views/admin/student-leave-manage/index.blade.php ENDPATH**/ ?>