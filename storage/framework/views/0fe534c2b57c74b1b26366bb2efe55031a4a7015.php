<div class="form-group col-md-3">
  <label for="faculty"><?php echo e(__('field_faculty')); ?></label>
  <select class="form-control faculty" name="faculty" id="faculty">
    <option value="0"><?php echo e(__('all')); ?></option>
    <?php if(isset($faculties)): ?>
    <?php $__currentLoopData = $faculties->sortBy('title'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $faculty): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <option value="<?php echo e($faculty->id); ?>" <?php if( $selected_faculty == $faculty->id): ?> selected <?php endif; ?>><?php echo e($faculty->title); ?></option>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
  </select>

  <div class="invalid-feedback">
    <?php echo e(__('required_field')); ?> <?php echo e(__('field_faculty')); ?>

  </div>
</div>
<div class="form-group col-md-3">
  <label for="program"><?php echo e(__('field_program')); ?></label>
  <select class="form-control program" name="program" id="program">
    <option value="0"><?php echo e(__('all')); ?></option>
    <?php if(isset($programs)): ?>
    <?php $__currentLoopData = $programs->sortBy('title'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $program): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <option value="<?php echo e($program->id); ?>" <?php if( $selected_program == $program->id): ?> selected <?php endif; ?>><?php echo e($program->title); ?></option>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
  </select>

  <div class="invalid-feedback">
    <?php echo e(__('required_field')); ?> <?php echo e(__('field_program')); ?>

  </div>
</div>
<div class="form-group col-md-3">
  <label for="session"><?php echo e(__('field_session')); ?></label>
  <select class="form-control session" name="session" id="session">
    <option value="0"><?php echo e(__('all')); ?></option>
    <?php if(isset($sessions)): ?>
    <?php $__currentLoopData = $sessions->sortByDesc('id'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $session): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <option value="<?php echo e($session->id); ?>" <?php if( $selected_session == $session->id): ?> selected <?php endif; ?>><?php echo e($session->title); ?></option>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
  </select>

  <div class="invalid-feedback">
    <?php echo e(__('required_field')); ?> <?php echo e(__('field_session')); ?>

  </div>
</div>
<div class="form-group col-md-3">
  <label for="semester"><?php echo e(__('field_semester')); ?></label>
  <select class="form-control semester" name="semester" id="semester">
    <option value="0"><?php echo e(__('all')); ?></option>
    <?php if(isset($semesters)): ?>
    <?php $__currentLoopData = $semesters->sortBy('id'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $semester): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <option value="<?php echo e($semester->id); ?>" <?php if( $selected_semester == $semester->id): ?> selected <?php endif; ?>><?php echo e($semester->title); ?></option>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
  </select>

  <div class="invalid-feedback">
    <?php echo e(__('required_field')); ?> <?php echo e(__('field_semester')); ?>

  </div>
</div>
<div class="form-group col-md-3">
  <label for="section"><?php echo e(__('field_section')); ?></label>
  <select class="form-control section" name="section" id="section">
    <option value="0"><?php echo e(__('all')); ?></option>
    <?php if(isset($sections)): ?>
    <?php $__currentLoopData = $sections->sortBy('title'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $section): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <option value="<?php echo e($section->id); ?>" <?php if( $selected_section == $section->id): ?> selected <?php endif; ?>><?php echo e($section->title); ?></option>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
  </select>

  <div class="invalid-feedback">
    <?php echo e(__('required_field')); ?> <?php echo e(__('field_section')); ?>

  </div>
</div>


<script src="<?php echo e(asset('dashboard/plugins/jquery/js/jquery.min.js')); ?>"></script>

<script type="text/javascript">
    "use strict";
    $(".faculty").on('change',function(e){
      e.preventDefault(e);
      var program=$(".program");
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type:'POST',
        url: "<?php echo e(route('filter-program')); ?>",
        data:{
          _token:$('input[name=_token]').val(),
          faculty:$(this).val()
        },
        success:function(response){
              console.log("Okk");
            // var jsonData=JSON.parse(response);
            $('option', program).remove();
            $('.program').append('<option value=""><?php echo e(__("all")); ?></option>');
            $.each(response, function(){
              $('<option/>', {
                'value': this.id,
                'text': this.title
              }).appendTo('.program');
            });
          }

      });
    });

    $(".program").on('change',function(e){
      e.preventDefault(e);
      var session=$(".session");
      var semester=$(".semester");
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type:'POST',
        url: "<?php echo e(route('filter-session')); ?>",
        data:{
          _token:$('input[name=_token]').val(),
          program:$(this).val()
        },
        success:function(response){
            // var jsonData=JSON.parse(response);
            $('option', session).remove();
            $('.session').append('<option value=""><?php echo e(__("all")); ?></option>');
            $.each(response, function(){
              $('<option/>', {
                'value': this.id,
                'text': this.title
              }).appendTo('.session');
            });
          }

      });

      $.ajax({
        type:'POST',
        url: "<?php echo e(route('filter-semester')); ?>",
        data:{
          _token:$('input[name=_token]').val(),
          program:$(this).val()
        },
        success:function(response){
            // var jsonData=JSON.parse(response);
            $('option', semester).remove();
            $('.semester').append('<option value=""><?php echo e(__("all")); ?></option>');
            $.each(response, function(){
              $('<option/>', {
                'value': this.id,
                'text': this.title
              }).appendTo('.semester');
            });
          }

      });
    });

    $(".semester").on('change',function(e){
      e.preventDefault(e);
      var section=$(".section");
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
          semester:$(this).val(),
          program:$('.program option:selected').val()
        },
        success:function(response){
            // var jsonData=JSON.parse(response);
            $('option', section).remove();
            $('.section').append('<option value=""><?php echo e(__("all")); ?></option>');
            $.each(response, function(){
              $('<option/>', {
                'value': this.id,
                'text': this.title
              }).appendTo('.section');
            });
          }

      });
    });
</script><?php /**PATH C:\xampp\htdocs\HorizonCollege\resources\views/common/inc/student_search_filter.blade.php ENDPATH**/ ?>