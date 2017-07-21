import Ember from 'ember';

export default Ember.Controller.extend({
  stack: Ember.computed.alias('model.stack'),

  showServiceInfo: null,
  selectedService: null,
  noServices: false,
  actions: {
    dismiss: function() {
      // this.set('showServiceInfo',false);
      this.set('model.showServiceInfo', false);
      this.set('model.selectedService', null);
      // $('g.output').click();
      $('#stack-svg svg').css('height', $('#stack-svg').height());
      $('#stack-svg').resize();
    },
    setNoServices: function(val) {
      this.set('noServices', val);
    }
  }
});
