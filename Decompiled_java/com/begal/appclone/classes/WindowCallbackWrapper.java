package com.begal.appclone.classes;

import android.annotation.TargetApi;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;

public class WindowCallbackWrapper implements Window.Callback {
    protected Window.Callback mOriginalCallback;

    public WindowCallbackWrapper(Window.Callback originalCallback) {
        this.mOriginalCallback = originalCallback;
    }

    public boolean dispatchKeyEvent(KeyEvent event) {
        return this.mOriginalCallback.dispatchKeyEvent(event);
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent event) {
        return this.mOriginalCallback.dispatchKeyShortcutEvent(event);
    }

    public boolean dispatchTouchEvent(MotionEvent event) {
        return this.mOriginalCallback.dispatchTouchEvent(event);
    }

    public boolean dispatchTrackballEvent(MotionEvent event) {
        return this.mOriginalCallback.dispatchTrackballEvent(event);
    }

    public boolean dispatchGenericMotionEvent(MotionEvent event) {
        return this.mOriginalCallback.dispatchGenericMotionEvent(event);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        return this.mOriginalCallback.dispatchPopulateAccessibilityEvent(event);
    }

    public View onCreatePanelView(int featureId) {
        return this.mOriginalCallback.onCreatePanelView(featureId);
    }

    public boolean onCreatePanelMenu(int featureId, Menu menu) {
        return this.mOriginalCallback.onCreatePanelMenu(featureId, menu);
    }

    public boolean onPreparePanel(int featureId, View view, Menu menu) {
        return this.mOriginalCallback.onPreparePanel(featureId, view, menu);
    }

    public boolean onMenuOpened(int featureId, Menu menu) {
        return this.mOriginalCallback.onMenuOpened(featureId, menu);
    }

    public boolean onMenuItemSelected(int featureId, MenuItem item) {
        return this.mOriginalCallback.onMenuItemSelected(featureId, item);
    }

    public void onWindowAttributesChanged(WindowManager.LayoutParams attrs) {
        this.mOriginalCallback.onWindowAttributesChanged(attrs);
    }

    public void onContentChanged() {
        this.mOriginalCallback.onContentChanged();
    }

    public void onWindowFocusChanged(boolean hasFocus) {
        this.mOriginalCallback.onWindowFocusChanged(hasFocus);
    }

    public void onAttachedToWindow() {
        this.mOriginalCallback.onAttachedToWindow();
    }

    public void onDetachedFromWindow() {
        this.mOriginalCallback.onDetachedFromWindow();
    }

    public void onPanelClosed(int featureId, Menu menu) {
        this.mOriginalCallback.onPanelClosed(featureId, menu);
    }

    public boolean onSearchRequested() {
        return this.mOriginalCallback.onSearchRequested();
    }

    @TargetApi(23)
    public boolean onSearchRequested(SearchEvent searchEvent) {
        return this.mOriginalCallback.onSearchRequested(searchEvent);
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.mOriginalCallback.onWindowStartingActionMode(callback);
    }

    @TargetApi(23)
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int type) {
        return this.mOriginalCallback.onWindowStartingActionMode(callback, type);
    }

    public void onActionModeStarted(ActionMode mode) {
        this.mOriginalCallback.onActionModeStarted(mode);
    }

    public void onActionModeFinished(ActionMode mode) {
        this.mOriginalCallback.onActionModeFinished(mode);
    }
}
