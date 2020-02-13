<div class="form-group row">
    <div class="col-lg-3"></div>
    <div class="col-lg-2"><button type="submit" class="form-control btn btn-sm btn-success mt-2" style="min-width: 100px; max-height: 30px">Guardar</button></div>
    <div class="col-lg-1"></div>
    <div class="col-lg-2">
        <a href="{{ isset($id)?route($pagVolver,['id'=>$id,'pagVolver'=>$volver]) :route($pagVolver)}}" href="{{ route($pagVolver)}}" class="form-control btn btn-sm btn-danger mt-2" style="min-width: 100px; max-height: 30px">Cancelar</a>
    </div>
</div>
