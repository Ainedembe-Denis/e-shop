@extends('master.back')

@section('content')

<div class="container-fluid">

	<!-- Page Heading -->
    <div class="card mb-4">
        <div class="card-body">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h3 class=" mb-0"><b>{{ __('Payment') }}</b></h3>
                </div>
        </div>
    </div>

	<!-- Form -->
	<div class="row">

		<div class="col-xl-12 col-lg-12 col-md-12">

			<div class="card o-hidden border-0 shadow-lg">
				<div class="card-body ">
					<!-- Nested Row within Card Body -->
					<div class="row">
                        <div class="col-lg-3">
                            <div class="nav flex-column m-3 nav-pills nav-secondary" id="v-pills-tab" role="tablist" aria-orientation="vertical">

                                    <a class="nav-link active" data-toggle="pill" href="#cod">{{ __('Cash On Delivery') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#flutterwave">{{ __('Flutterwave') }}</a>
                                    <a class="nav-link" data-toggle="pill" href="#bank">{{ __('Bank Transfer') }}</a>

                            </div>
                        </div>
						<div class="col-lg-9">
							<div class="p-5">
								<div class="admin-form">

									@include('alerts.alerts')

                                    <div class="container pl-0 pr-0 ml-0 mr-0 w-100 mw-100">
                                        <div id="tabs">
                                        <!-- Tab panes -->
                                        <div class="tab-content">
                                          <div id="cod" class="container tab-pane active"><br>

                                            <div class="row justify-content-center">

                                                <div class="col-lg-8">

                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">

                                                    @csrf
                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                            <input type="checkbox" class="switch switch-bootstrap " name="status" value="1" {{ $cod->status == 1 ? 'checked' : '' }}>
                                                            <span class="switch-body"></span>
                                                            <span class="switch-text">{{ __('Display Cash On Delivery') }}</span>
                                                        </label>
                                                    </div>

                                                        <div class="image-show {{ $cod->status == 1 ? '' : 'd-none' }}">

                                                            <div class="form-group">
                                                                <label for="name">{{ __('Enter Name') }} *</label>
                                                                <input type="text" class="form-control" name="name" id="name" value="{{$cod->name}}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="name">{{ __('Current Image') }}</label>
                                                                <div class="col-lg-12 pb-1">
                                                                    <img class="admin-setting-img"
                                                                        src="{{ $cod->photo ? asset('assets/images/'.$cod->photo) : asset('assets/images/placeholder.png') }}"
                                                                        alt="No Image Found">
                                                                </div>
                                                                <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                            </div>

                                                            <div class="form-group position-relative col-xl-12">
                                                                <label class="file">
                                                                    <input type="file"  accept="image/*"  class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                    <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                                </label>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="text">{{ __('Enter Text') }} *</label>
                                                                <textarea name="text" id="text" class="form-control " rows="5"
                                                                    placeholder="{{ __('Enter Text') }}"
                                                                    >{{ $cod->text }}</textarea>
                                                            </div>

                                                            <input type="hidden" name="unique_keyword" value="cod">

                                                        </div>

                                                        <div>

                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary ">{{ __('Submit') }}</button>
                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>

                                            </div>

                                          </div>

                                          <div id="bank" class="container tab-pane"><br>
                                            <div class="row justify-content-center">
                                                <div class="col-lg-8">
                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">
                                                    @csrf

                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                            <input type="checkbox" class="switch switch-bootstrap " name="status" value="1" {{ $bank->status == 1 ? 'checked' : '' }}>
                                                            <span class="switch-body"></span>
                                                            <span class="switch-text">{{ __('Display Bank Transfer') }}</span>
                                                        </label>
                                                    </div>
                                                    <div class="image-show {{ $bank->status == 1 ? '' : 'd-none' }}">
                                                        <div class="form-group col-xl-12">
                                                            <label for="name">{{ __('Current Image') }}</label>
                                                            <div class="col-lg-12 pb-1">
                                                                <img class="admin-setting-img"
                                                                    src="{{ $bank->photo ? asset('assets/images/'.$bank->photo) : asset('assets/images/placeholder.png') }}"
                                                                    stripe="No Image Found">
                                                            </div>
                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                        </div>

                                                        <div class="form-group position-relative col-xl-12">
                                                            <label class="file">
                                                                <input type="file" class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                            </label>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="name">{{ __('Enter Name') }} *</label>
                                                            <input type="text" class="form-control" name="name" id="name" value="{{$bank->name}}">
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="text">{{ __('Enter Text') }} *</label>
                                                            <textarea name="text" id="text" class="form-control text-editor" rows="5"
                                                                placeholder="{{ __('Enter Text') }}"
                                                                >{{ $bank->text }}</textarea>
                                                        </div>

                                                        <input type="hidden" name="unique_keyword" value="bank">

                                                    </div>

                                                        <div>

                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary btn-block w-50">{{ __('Submit') }}</button>
                                                            </div>

                                                        </div>

                                                    </form>

                                                </div>

                                            </div>

                                          </div>

                                          <div id="flutterwave" class="container tab-pane"><br>
                                            <div class="row justify-content-center">
                                                <div class="col-lg-8">
                                                    <form action="{{ route('back.setting.payment.update') }}" method="POST"
                                                    enctype="multipart/form-data">

                                                    @csrf

                                                    <div class="form-group">
                                                        <label class="switch-primary">
                                                            <input type="checkbox" class="switch switch-bootstrap " name="status" value="1" {{ $flutterwave->status == 1 ? 'checked' : '' }}>
                                                            <span class="switch-body"></span>
                                                            <span class="switch-text">{{ __('Display Flutterwave') }}</span>
                                                        </label>
                                                    </div>

                                                    <div class="image-show {{ $flutterwave->status == 1 ? '' : 'd-none' }}">

                                                        <div class="form-group col-xl-12">
                                                            <label for="name">{{ __('Current Image') }}</label>
                                                            <div class="col-lg-12 pb-1">
                                                                <img class="admin-setting-img"
                                                                    src="{{ $flutterwave->photo ? asset('assets/images/'.$flutterwave->photo) : asset('assets/images/placeholder.png') }}"
                                                                    stripe="No Image Found">
                                                            </div>
                                                            <span>{{ __('Image Size Should Be 52 x 35.') }}</span>
                                                        </div>

                                                        <div class="form-group position-relative col-xl-12">
                                                            <label class="file">
                                                                <input type="file" class="upload-photo" name="photo" id="file" aria-label="File browser example">
                                                                <span class="file-custom text-left">{{ __('Upload Image...') }}</span>
                                                            </label>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="name">{{ __('Enter Name') }} *</label>
                                                            <input type="text" class="form-control" name="name" id="name" value="{{$flutterwave->name}}">
                                                        </div>

                                                        @foreach($flutterwaveData as $pkey => $flutterwaveData)

                                                        @if($pkey == 'check_sandbox')

                                                        <div class="form-group  col-xl-4 col-md-6">
                                                            <div class="custom-control custom-checkbox">
                                                                <input type="checkbox" name="pkey[{{ __($pkey) }}]" class="custom-control-input" {{ $flutterwaveData->status == 1  ? 'checked' : '' }} id="mer{{ $pkey }}">
                                                                <label class="custom-control-label" for="mer{{ $pkey }}">
                                                                {{ __( $flutterwave->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}
                                                                </label>
                                                            </div>
                                                        </div>

                                                        @else
                                                            <div class="form-group col-xl-12">
                                                                <label for="inp-{{ __($pkey) }}">{{ __( $flutterwave->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}</label>
                                                                <input type="text" class="form-control" id="inp-{{ __($pkey) }}" name="pkey[{{ __($pkey) }}]"  placeholder="{{ __( $flutterwave->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}" value="{{ $flutterwaveData }}" required>
                                                            </div>
                                                        @endif
                                                        @endforeach
                                                        <div class="form-group">
                                                            <label for="text">{{ __('Enter Text') }} *</label>
                                                            <textarea name="text" id="text" class="form-control " rows="5"
                                                                placeholder="{{ __('Enter Text') }}"
                                                                >{{ $flutterwave->text }}</textarea>
                                                        </div>
                                                        <input type="hidden" name="unique_keyword" value="flutterwave">
                                                    </div>
                                                        <div>
                                                            <div class="form-group d-flex justify-content-center">
                                                                <button type="submit" class="btn btn-secondary btn-block w-50">{{ __('Submit') }}</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                          </div>

                                        </div>
                                    </div>
                                </div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</div>

@endsection
