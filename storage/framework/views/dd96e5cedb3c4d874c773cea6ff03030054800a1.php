
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
                                <div class="form-group col-md-3">
                                    <label for="student"><?php echo e(__('field_student_id')); ?> <span>*</span></label>
                                    <select class="form-control select2" name="student" id="student" required>
                                        <option value=""><?php echo e(__('select')); ?></option>
                                        <?php $__currentLoopData = $students; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $student): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($student->student_id); ?>" <?php if($selected_student == $student->student_id): ?> selected <?php endif; ?>><?php echo e($student->student_id); ?> - <?php echo e($student->first_name); ?> <?php echo e($student->last_name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>

                                    <div class="invalid-feedback">
                                      <?php echo e(__('required_field')); ?> <?php echo e(__('field_student_id')); ?>

                                    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <button type="submit" class="btn btn-info btn-filter"><i class="fas fa-search"></i> <?php echo e(__('btn_search')); ?></button>
                                </div>
                            </div>
                        </form>
                    </div>


                    <?php if(isset($row)): ?>
                    <div class="card-block">
                        <?php
                            $enroll = \App\Models\Student::enroll($row->id);
                        ?>

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

                        <div class="row">
                            <div class="col-md-6">
                                <fieldset class="row gx-2 scheduler-border">
                                    <legend><?php echo e(__('tab_basic_info')); ?></legend>
                                    <p><mark class="text-primary"><?php echo e(__('field_student_id')); ?>:</mark> #<?php echo e($row->student_id); ?></p>
                                    <hr/>

                                    <p><mark class="text-primary"><?php echo e(__('field_name')); ?>:</mark> <?php echo e($row->first_name); ?> <?php echo e($row->last_name); ?></p>
                                    <hr/>

                                    <p><mark class="text-primary"><?php echo e(__('field_gender')); ?>:</mark> 
                                        <?php if( $row->gender == 1 ): ?>
                                        <?php echo e(__('gender_male')); ?>

                                        <?php elseif( $row->gender == 2 ): ?>
                                        <?php echo e(__('gender_female')); ?>

                                        <?php elseif( $row->gender == 3 ): ?>
                                        <?php echo e(__('gender_other')); ?>

                                        <?php endif; ?>
                                    </p><hr/>

                                    <p><mark class="text-primary"><?php echo e(__('field_total_credit_hour')); ?>:</mark> <?php echo e(round($total_credits, 2)); ?></p>
                                    <hr/>

                                    <p><mark class="text-primary"><?php echo e(__('field_cumulative_gpa')); ?>:</mark> 
                                        <?php
                                        if($total_credits <= 0){
                                            $total_credits = 1;
                                        }
                                        $com_gpa = $total_cgpa / $total_credits;
                                        echo number_format((float)$com_gpa, 2, '.', '');
                                        ?>
                                    </p>
                                    <hr/>
                                </fieldset>
                            </div>
                            <div class="col-md-6">
                                <fieldset class="row gx-2 scheduler-border">
                                    <legend><?php echo e(__('field_academic_information')); ?></legend>
                                    <p><mark class="text-primary"><?php echo e(__('field_batch')); ?>:</mark> <?php echo e($row->batch->title ?? ''); ?></p><hr/>

                                    <p><mark class="text-primary"><?php echo e(__('field_program')); ?>:</mark> <?php echo e($row->program->title ?? ''); ?></p><hr/>

                                    <p><mark class="text-primary"><?php echo e(__('field_session')); ?>:</mark> <?php echo e($enroll->session->title ?? ''); ?></p><hr/>

                                    <p><mark class="text-primary"><?php echo e(__('field_semester')); ?>:</mark> <?php echo e($enroll->semester->title ?? ''); ?></p><hr/>

                                    <p><mark class="text-primary"><?php echo e(__('field_section')); ?>:</mark> <?php echo e($enroll->section->title ?? ''); ?></p><hr/>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <?php endif; ?>
                </div>

                <?php if(isset($row)): ?>  
                <div class="card">
                    <div class="card-header">
                        <h5><?php echo e(__('status_current')); ?> <?php echo e(__('field_session')); ?>: <?php echo e($row->currentEnroll->session->title ?? ''); ?> | <?php echo e($row->currentEnroll->semester->title ?? ''); ?> | <?php echo e($row->currentEnroll->section->title ?? ''); ?></h5>
                    </div>
                    <div class="card-block">
                        <!-- [ Data table ] start -->
                        <div class="table-responsive">
                            <table class="display table table-striped">
                                <thead>
                                    <tr>
                                        <th><?php echo e(__('field_code')); ?></th>
                                        <th><?php echo e(__('field_subject')); ?></th>
                                        <th><?php echo e(__('field_credit_hour')); ?></th>
                                        <th><?php echo e(__('field_point')); ?></th>
                                        <th><?php echo e(__('field_grade')); ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $semester_credits = 0;
                                        $semester_cgpa = 0;
                                    ?>

                                    <?php if(isset($row->currentEnroll->subjects)): ?>
                                    <?php $__currentLoopData = $row->currentEnroll->subjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subject): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                        $semester_credits = $semester_credits + $subject->credit_hour;
                                        $subject_grade = null;
                                    ?>
                                    
                                    <tr>
                                        <td><?php echo e($subject->code); ?></td>
                                        <td>
                                            <?php echo e($subject->title); ?>

                                            <?php if($subject->subject_type == 0): ?>
                                             (<?php echo e(__('subject_type_optional')); ?>)
                                            <?php endif; ?>
                                        </td>
                                        <td><?php echo e(round($subject->credit_hour, 2)); ?></td>
                                        <td>
                                            <?php if(isset($row->currentEnroll->subjectMarks)): ?>
                                            <?php $__currentLoopData = $row->currentEnroll->subjectMarks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mark): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($mark->subject_id == $subject->id): ?>
                                                <?php
                                                $marks_per = round($mark->total_marks);
                                                ?>

                                                <?php $__currentLoopData = $grades; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $grade): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if($marks_per >= $grade->min_mark && $marks_per <= $grade->max_mark): ?>
                                                <?php echo e(number_format((float)$grade->point * $subject->credit_hour, 2, '.', '')); ?>

                                                <?php
                                                $semester_cgpa = $semester_cgpa + ($grade->point * $subject->credit_hour);
                                                $subject_grade = $grade->title;
                                                ?>
                                                <?php break; ?>
                                                <?php endif; ?>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                        </td>
                                        <td><?php echo e($subject_grade ?? ''); ?></td>
                                    </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th colspan="2"><?php echo e(__('field_term_total')); ?></th>
                                        <th><?php echo e($semester_credits); ?></th>
                                        <th><?php echo e(number_format((float)$semester_cgpa, 2, '.', '')); ?></th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <!-- [ Data table ] end -->
                    </div>
                </div>

                
                <form action="<?php echo e(route($route.'.store')); ?>" method="post">
                <?php echo csrf_field(); ?>
                <div class="card">
                    <div class="card-header">
                        <h5><?php echo e(__('field_next_enrollment')); ?></h5>
                    </div>
                    <div class="card-block">
                        <div class="row gx-2">
                            <input type="text" name="student" value="<?php echo e($row->id); ?>" hidden>

                            <div class="form-group col-md-3">
                                <label for="program"><?php echo e(__('field_program')); ?> <span>*</span></label>
                                <select class="form-control" name="program" id="program" required>
                                  <option value=""><?php echo e(__('select')); ?></option>
                                  <?php $__currentLoopData = $programs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $program): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                  <option value="<?php echo e($program->id); ?>" <?php if( $row->program_id == $program->id): ?> selected <?php endif; ?>><?php echo e($program->title); ?></option>
                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>

                                <div class="invalid-feedback">
                                  <?php echo e(__('required_field')); ?> <?php echo e(__('field_program')); ?>

                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="session"><?php echo e(__('field_session')); ?> <span>*</span></label>
                                <select class="form-control" name="session" id="session" required>
                                  <option value=""><?php echo e(__('select')); ?></option>
                                  <?php $__currentLoopData = $sessions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $session): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                  <option value="<?php echo e($session->id); ?>" <?php if( $enroll->session_id == $session->id): ?> selected <?php endif; ?>><?php echo e($session->title); ?></option>
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
                                  <option value="<?php echo e($semester->id); ?>" <?php if( $enroll->semester_id == $semester->id): ?> selected <?php endif; ?>><?php echo e($semester->title); ?></option>
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
                                  <option value="<?php echo e($section->id); ?>" <?php if( $enroll->section_id == $section->id): ?> selected <?php endif; ?>><?php echo e($section->title); ?></option>
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
                </form>
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
      program: '<?php echo e($row->program_id); ?>'
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
      program: '<?php echo e($row->program_id); ?>'
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
<?php echo $__env->make('admin.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\UniversitySystem\resources\views/admin/single-enroll/index.blade.php ENDPATH**/ ?>