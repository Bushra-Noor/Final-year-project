
<?php $__env->startSection('title', $title); ?>
<?php $__env->startSection('content'); ?>

<!-- Start Content-->
<div class="main-body">
    <div class="page-wrapper">
        <!-- [ Main Content ] start -->
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5><?php echo e($title); ?></h5>
                    </div>
                    <div class="card-block">
                        <form class="needs-validation" novalidate method="get" action="<?php echo e(route($route.'.index')); ?>">
                            <div class="row gx-2">
                                <?php echo $__env->make('common.inc.common_search_filter', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                                <div class="form-group col-md-3">
                                    <button type="submit" class="btn btn-info btn-filter"><i class="fas fa-search"></i> <?php echo e(__('btn_search')); ?></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-sm-12">
                <?php if(isset($rows)): ?>
                <form action="<?php echo e(route($route.'.store')); ?>" method="post">
                <?php echo csrf_field(); ?>
                <?php if(count($rows) > 0): ?>
                <div class="card">
                    <div class="card-block">
                        <!-- [ Data table ] start -->
                        <div class="table-responsive">
                            <table class="display table nowrap table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>
                                        <div class="checkbox checkbox-success d-inline">
                                            <input type="checkbox" id="checkbox" class="all_select" checked>
                                            <label for="checkbox" class="cr" style="margin-bottom: 0px;"></label>
                                        </div>
                                        </th>
                                        <th><?php echo e(__('field_student_id')); ?></th>
                                        <th><?php echo e(__('field_name')); ?></th>
                                        <th><?php echo e(__('field_gender')); ?></th>
                                        <th><?php echo e(__('field_total_credit_hour')); ?></th>
                                        <th><?php echo e(__('field_cumulative_gpa')); ?></th>
                                        <th><?php echo e(__('field_batch')); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                    <?php
                                        $total_credits = 0;
                                        $total_cgpa = 0;
                                    ?>
                                    <?php $__currentLoopData = $row->studentEnrolls; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                        <?php if(isset($item->subjectMarks)): ?>
                                        <?php $__currentLoopData = $item->subjectMarks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mark): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                            <?php
                                            $marks_per = round($mark->total_marks);
                                            ?>

                                            <?php $__currentLoopData = $grades; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $grade): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($marks_per >= $grade->min_mark && $marks_per <= $grade->max_mark): ?>
                                            <?php
                                            if($grade->point > 0){
                                            $total_cgpa = $total_cgpa + ($grade->point * $mark->subject->credit_hour);
                                            $total_credits = $total_credits + $mark->subject->credit_hour;
                                            }
                                            ?>
                                            <?php break; ?>
                                            <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>

                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                    <input type="text" name="program" value="<?php echo e($selected_program); ?>" hidden>
                                    <tr>
                                        <td>
                                        <div class="checkbox checkbox-primary d-inline">
                                            <input type="checkbox" name="students[]" id="checkbox-<?php echo e($row->id); ?>" value="<?php echo e($row->id); ?>" checked>
                                            <label for="checkbox-<?php echo e($row->id); ?>" class="cr"></label>
                                        </div>
                                        </td>
                                        <td>
                                            <a href="<?php echo e(route('admin.student.show', $row->id)); ?>" target="_blank">
                                            #<?php echo e($row->student_id); ?>

                                            </a>
                                        </td>
                                        <td><?php echo e($row->first_name); ?> <?php echo e($row->last_name); ?></td>
                                        <td>
                                            <?php if( $row->gender == 1 ): ?>
                                            <?php echo e(__('gender_male')); ?>

                                            <?php elseif( $row->gender == 2 ): ?>
                                            <?php echo e(__('gender_female')); ?>

                                            <?php elseif( $row->gender == 3 ): ?>
                                            <?php echo e(__('gender_other')); ?>

                                            <?php endif; ?>
                                        </td>
                                        <td><?php echo e(round($total_credits, 2)); ?></td>
                                        <td>
                                            <?php
                                            if($total_credits <= 0){
                                                $total_credits = 1;
                                            }
                                            $com_gpa = $total_cgpa / $total_credits;
                                            echo number_format((float)$com_gpa, 2, '.', '');
                                            ?>
                                        </td>
                                        <td><?php echo e($row->batch->title ?? ''); ?></td>
                                    </tr>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- [ Data table ] end -->
                    </div>
                </div>
                

                <div class="card">
                    <div class="card-header">
                        <h5><?php echo e(__('field_next_enrollment')); ?></h5>
                    </div>
                    <div class="card-block">
                        <div class="row gx-2">
                            <div class="form-group col-md-3">
                                <label for="session"><?php echo e(__('field_session')); ?> <span>*</span></label>
                                <select class="form-control" name="session" id="session" required>
                                  <option value=""><?php echo e(__('select')); ?></option>
                                  <?php $__currentLoopData = $sessions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $session): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                  <option value="<?php echo e($session->id); ?>" <?php if( $selected_session == $session->id): ?> selected <?php endif; ?>><?php echo e($session->title); ?></option>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>

                                <div class="invalid-feedback">
                                  <?php echo e(__('required_field')); ?> <?php echo e(__('field_session')); ?>

                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="semester"><?php echo e(__('field_semester')); ?> <span>*</span></label>
                                <select class="form-control next_semester" name="semester" id="semester" required>
                                  <option value=""><?php echo e(__('select')); ?></option>
                                  <?php $__currentLoopData = $semesters; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $semester): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                  <option value="<?php echo e($semester->id); ?>" <?php if( $selected_semester == $semester->id): ?> selected <?php endif; ?>><?php echo e($semester->title); ?></option>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>

                                <div class="invalid-feedback">
                                  <?php echo e(__('required_field')); ?> <?php echo e(__('field_semester')); ?>

                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="section"><?php echo e(__('field_section')); ?> <span>*</span></label>
                                <select class="form-control next_section" name="section" id="section" required>
                                  <option value=""><?php echo e(__('select')); ?></option>
                                  <?php $__currentLoopData = $sections; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $section): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                  <option value="<?php echo e($section->id); ?>" <?php if( $selected_section == $section->id): ?> selected <?php endif; ?>><?php echo e($section->title); ?></option>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>

                                <div class="invalid-feedback">
                                  <?php echo e(__('required_field')); ?> <?php echo e(__('field_section')); ?>

                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="subject"><?php echo e(__('field_subject')); ?> <span>* (<?php echo e(__('select_multiple')); ?>)</span></label>
                                <select class="form-control select2 next_subject" name="subjects[]" id="subject" multiple required>
                                    <?php $__currentLoopData = $subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($subject->id); ?>">
                                        <?php echo e($subject->code); ?> - <?php echo e($subject->title); ?>

                                    </option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>

                                <div class="invalid-feedback">
                                <?php echo e(__('required_field')); ?> <?php echo e(__('field_subject')); ?>

                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#confirmModal">
                                    <i class="fas fa-exchange"></i> <?php echo e(__('btn_enroll')); ?>

                                </button>
                                <!-- Include Confirm modal -->
                                <?php echo $__env->make($view.'.confirm', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
                </form>

                <?php if(count($rows) < 1): ?>
                <div class="card">
                    <div class="card-block">
                        <h5><?php echo e(__('no_result_found')); ?></h5>
                    </div>
                </div>
                <?php endif; ?>
                <?php endif; ?>

            </div>
        </div>
        <!-- [ Main Content ] end -->
    </div>
</div>
<!-- End Content-->

<?php $__env->stopSection(); ?>

<?php $__env->startSection('page_js'); ?>
<?php if(isset($row)): ?>
<script type="text/javascript">
"use strict";
// checkbox all-check-button selector
$(".all_select").on('click',function(e){
    if($(this).is(":checked")){
        // check all checkbox
        $("input:checkbox").prop('checked', true);
    }
    else if($(this).is(":not(:checked)")){
        // uncheck all checkbox
        $("input:checkbox").prop('checked', false);
    }
});

// Next Section
$(".next_semester").on('change',function(e){
  e.preventDefault(e);
  var section=$(".next_section");
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });
  $.ajax({
    type:'POST',
    url: "<?php echo e(route('filter-section')); ?>",
    data:{
      _token:$('input[name=_token]').val(),
      semester: $(this).val(),
      program: '<?php echo e($selected_program); ?>'
    },
    success:function(response){
        // var jsonData=JSON.parse(response);
        $('option', section).remove();
        $('.next_section').append('<option value=""><?php echo e(__("select")); ?></option>');
        $.each(response, function(){
          $('<option/>', {
            'value': this.id,
            'text': this.title
          }).appendTo('.next_section');
        });
      }

  });
});

// Next Subject
$(".next_section").on('change',function(e){
  e.preventDefault(e);
  var subject=$(".next_subject");
  $.ajaxSetup({
    headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
  });
  $.ajax({
    type:'POST',
    url: "<?php echo e(route('filter-enroll-subject')); ?>",
    data:{
      _token:$('input[name=_token]').val(),
      section: $(this).val(),
      semester: $('.next_semester option:selected').val(),
      program: '<?php echo e($selected_program); ?>'
    },
    success:function(response){
        // var jsonData=JSON.parse(response);
        $.each(response, function(){
          $('.next_subject option[value='+this.id+']').attr('selected','selected');
          $('.next_subject').select2().trigger('change');
        });
      }

  });
});
</script>
<?php endif; ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('admin.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\UniversitySystem\resources\views/admin/group-enroll/index.blade.php ENDPATH**/ ?>