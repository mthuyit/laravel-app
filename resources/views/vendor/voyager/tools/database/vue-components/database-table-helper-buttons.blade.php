@section('database-table-helper-buttons-template')
    <div>
        <div class="btn btn-success" @click="addNewColumn">+ {{ __('voyager::database.add_new_column') }}</div>
        <div class="btn btn-success" @click="addSeoContent">+ {{ __('generic.add_seo_content') }}</div>
        <div class="btn btn-success" @click="addTimestamps">+ {{ __('voyager::database.add_timestamps') }}</div>
        <div class="btn btn-success" @click="addSoftDeletes">+ {{ __('voyager::database.add_softdeletes') }}</div> 
    </div>
@endsection

<script>
    Vue.component('database-table-helper-buttons', {
        template: `@yield('database-table-helper-buttons-template')`,
        methods: {
            addColumn(column) {
                this.$emit('columnAdded', column);
            },
            makeColumn(options) {
                return $.extend({
                    name: '',
                    oldName: '',
                    type: getDbType('integer'),
                    length: null,
                    fixed: false,
                    unsigned: false,
                    autoincrement: false,
                    notnull: false,
                    default: null
                }, options);
            },
            addNewColumn() {
                this.addColumn(this.makeColumn());
            },
            addTimestamps() {
                this.addColumn(this.makeColumn({
                    name: 'created_at',
                    type: getDbType('timestamp')
                }));

                this.addColumn(this.makeColumn({
                    name: 'updated_at',
                    type: getDbType('timestamp')
                }));
            },
            addSeoContent() {
                this.addColumn(this.makeColumn({
                    name: 'seo_title',
                    type: getDbType('varchar'),
                    length: 255
                }));

                this.addColumn(this.makeColumn({
                    name: 'meta_keywords',
                    type: getDbType('text')
                }));

                this.addColumn(this.makeColumn({
                    name: 'meta_description',
                    type: getDbType('text')
                }));
            },
            addSoftDeletes() {
                this.addColumn(this.makeColumn({
                    name: 'deleted_at',
                    type: getDbType('timestamp')
                }));
            }
        }
    });
</script>
