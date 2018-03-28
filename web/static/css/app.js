import { StyleSheet } from 'react-native';

export default StyleSheet.create({
  body: {
    backgroundColor: 'white'
  },
  'brand-logo': {
    textAlign: 'left'
  },
  'header-link': {
    fontSize: [{ unit: 'em', value: 1 }]
  },
  'master-name': {
    textAlign: 'center',
    marginLeft: [{ unit: 'em', value: 3 }],
    marginTop: [{ unit: 'em', value: 1 }]
  },
  'master-container': {
    height: [{ unit: 'em', value: 10 }],
    marginTop: [{ unit: 'em', value: 2 }]
  },
  'master-add': {
    paddingTop: [{ unit: 'em', value: 1 }]
  },
  'master-preview': {
    height: [{ unit: 'string', value: 'auto' }],
    width: [{ unit: 'string', value: 'auto' }],
    minWidth: [{ unit: 'em', value: 20 }],
    minHeight: [{ unit: 'em', value: 20 }],
    marginBottom: [{ unit: 'em', value: 2 }],
    backgroundColor: 'white',
    borderRadius: '1em',
    borderStyle: 'dotted',
    paddingLeft: [{ unit: 'em', value: 2 }],
    paddingTop: [{ unit: 'em', value: 1 }],
    paddingRight: [{ unit: 'em', value: 1 }],
    paddingBottom: [{ unit: 'em', value: 2 }]
  },
  'master-desc-area': {
    marginLeft: [{ unit: 'em', value: 10 }]
  },
  'master-label': {
    fontWeight: 'bold',
    fontSize: [{ unit: 'em', value: 1 }]
  },
  'master-desc': {
    textAlign: 'left'
  },
  'master-image': {
    height: [{ unit: 'em', value: 15 }],
    width: [{ unit: 'em', value: 15 }],
    float: 'left'
  },
  'central-page': {
    textAlign: 'center',
    paddingTop: [{ unit: 'em', value: 5 }]
  },
  'rank-label-up': {
    fontSize: [{ unit: 'px', value: 18 }],
    fontWeight: 'bold',
    color: 'green'
  },
  'rank-label-down': {
    fontSize: [{ unit: 'px', value: 18 }],
    fontWeight: 'bold',
    color: 'red'
  },
  'top-5-images-header': {
    textAlign: 'center',
    fontWeight: 'lighter'
  },
  'user-profile': {
    marginTop: [{ unit: 'em', value: 5 }],
    paddingTop: [{ unit: 'em', value: 2 }],
    paddingLeft: [{ unit: 'em', value: 2 }],
    paddingBottom: [{ unit: 'em', value: 1 }],
    borderRadius: '2em',
    border: [{ unit: 'string', value: 'dotted' }]
  }
});
