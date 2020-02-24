
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

@immutable
class ReduxState {
  final List<ImageModel> images;
  final StorageReference mainReference;
  final bool hasEntryBeenAdded;


  ReduxState({this.mainReference, this.hasEntryBeenAdded, this.images});

  ReduxState copyWith({List<ImageModel> images, StorageReference mainReference, bool hasEntryBeenAdded}) {
    return new ReduxState(images: images ?? this.images, mainReference: mainReference ?? this.mainReference, hasEntryBeenAdded: hasEntryBeenAdded ?? this.hasEntryBeenAdded);
  }
}

firebaseMiddleware(Store<ReduxState> store, action, NextDispatcher next){
  print(action.runtimeType);
  
}

ReduxState stateReducer(ReduxState state, action){
  return state;
}