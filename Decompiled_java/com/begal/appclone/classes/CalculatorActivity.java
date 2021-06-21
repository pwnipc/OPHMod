package com.begal.appclone.classes;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import java.util.HashSet;
import java.util.Set;

public class CalculatorActivity extends Activity implements View.OnClickListener {
    /* access modifiers changed from: private */
    public static final String TAG = CalculatorActivity.class.getSimpleName();
    public static boolean sUnlocked;
    /* access modifiers changed from: private */
    public Set<Button> mButtons = new HashSet();
    /* access modifiers changed from: private */
    public TextView mDisplay;
    private boolean mDot;
    private String mFakeCalculatorCode;
    /* access modifiers changed from: private */
    public String mNumber1 = "0";
    /* access modifiers changed from: private */
    public String mNumber2 = "0";
    private String mOriginalActivityName;
    /* access modifiers changed from: private */
    public String mSymbol = "";

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        Window window;
        super.onCreate(savedInstanceState);
        try {
            Bundle metaData = getPackageManager().getActivityInfo(getComponentName(), 129).metaData;
            if (metaData != null) {
                this.mOriginalActivityName = metaData.getString("com.begal.appclone.originalActivityName");
                if (this.mOriginalActivityName != null && this.mOriginalActivityName.startsWith(".")) {
                    this.mOriginalActivityName = getPackageName() + this.mOriginalActivityName;
                }
                this.mFakeCalculatorCode = CloneSettings.getInstance(this).getString("fakeCalculatorCode", (String) null);
            }
        } catch (Exception e) {
            Log.w(TAG, e);
            exit();
        }
        try {
            setTheme(16973838);
            if (Build.VERSION.SDK_INT > 21 && (window = getWindow()) != null) {
                window.addFlags(Integer.MIN_VALUE);
                window.setNavigationBarColor(-12303292);
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setBackgroundColor(-12303292);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        setContentView(linearLayout);
        this.mDisplay = new TextView(this);
        linearLayout.addView(this.mDisplay, new LinearLayout.LayoutParams(-1, -2));
        this.mDisplay.setGravity(8388613);
        int padding = Utils.dp2px((Context) this, 16.0f);
        this.mDisplay.setPadding(padding, padding, padding, 0);
        this.mDisplay.setTextColor(-1);
        this.mDisplay.setTextSize(40.0f);
        this.mDisplay.setText("0");
        this.mDisplay.setSingleLine(false);
        int i = 2;
        this.mDisplay.setMaxLines(Utils.isLandscape(this) ? 1 : 2);
        TextView textView = this.mDisplay;
        if (Utils.isLandscape(this)) {
            i = 1;
        }
        textView.setLines(i);
        this.mDisplay.setEllipsize(TextUtils.TruncateAt.END);
        TableLayout tableLayout = new TableLayout(this);
        linearLayout.addView(tableLayout, new LinearLayout.LayoutParams(-1, -1));
        TableRow tableRow = addTableRow(tableLayout);
        addButton("7", tableRow, false);
        addButton("8", tableRow, false);
        addButton("9", tableRow, false);
        addButton("÷", tableRow, true);
        TableRow tableRow2 = addTableRow(tableLayout);
        addButton("4", tableRow2, false);
        addButton("5", tableRow2, false);
        addButton("6", tableRow2, false);
        addButton("×", tableRow2, true);
        TableRow tableRow3 = addTableRow(tableLayout);
        addButton("1", tableRow3, false);
        addButton("2", tableRow3, false);
        addButton("3", tableRow3, false);
        addButton("-", tableRow3, true);
        TableRow tableRow4 = addTableRow(tableLayout);
        Button zeroButton = addButton("0", tableRow4, false);
        addButton(".", tableRow4, false);
        addButton("=", tableRow4, false);
        addButton("+", tableRow4, true);
        zeroButton.setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View v) {
                String unused = CalculatorActivity.this.mSymbol = "";
                String unused2 = CalculatorActivity.this.mNumber1 = "0";
                String unused3 = CalculatorActivity.this.mNumber2 = "0";
                CalculatorActivity.this.mDisplay.setText("0");
                return true;
            }
        });
        linearLayout.post(new Runnable() {
            public void run() {
                try {
                    DisplayMetrics displayMetrics = CalculatorActivity.this.getResources().getDisplayMetrics();
                    for (Button button : CalculatorActivity.this.mButtons) {
                        float size = ((float) button.getHeight()) / displayMetrics.scaledDensity;
                        button.setTextSize(size * 0.33f);
                        CalculatorActivity.this.mDisplay.setTextSize(0.33f * size);
                    }
                } catch (Exception e) {
                    Log.w(CalculatorActivity.TAG, e);
                }
            }
        });
        setTitle("Calculator");
    }

    private TableRow addTableRow(TableLayout tableLayout) {
        TableRow tableRow = new TableRow(this);
        tableLayout.addView(tableRow, new TableLayout.LayoutParams(-1, 0, 1.0f));
        int padding = Utils.dp2px((Context) this, 8.0f);
        tableLayout.setPadding(padding, padding, padding, padding);
        return tableRow;
    }

    private Button addButton(String s, TableRow tableRow, boolean operator) {
        Button button = new Button(this);
        button.setText(s);
        button.setTextColor(-1);
        button.setTextSize(30.0f);
        button.setOnClickListener(this);
        tableRow.addView(button, new TableRow.LayoutParams(0, -1, 1.0f));
        if (operator) {
            button.getBackground().setColorFilter(-26624, PorterDuff.Mode.MULTIPLY);
        } else {
            button.getBackground().setColorFilter(-7829368, PorterDuff.Mode.MULTIPLY);
        }
        this.mButtons.add(button);
        return button;
    }

    @SuppressLint({"SetTextI18n"})
    public void onClick(View v) {
        String buttonText = ((Button) v).getText().toString();
        String displayText = this.mDisplay.getText().toString();
        try {
            int tmp = Integer.parseInt(buttonText);
            if ("0".equals(this.mNumber1) && "0".equals(this.mNumber2) && "".equals(this.mSymbol)) {
                displayText = "";
            }
            if ("".equals(this.mSymbol)) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.mNumber1);
                sb.append(this.mDot ? "." : "");
                sb.append(buttonText);
                this.mNumber1 = sb.toString();
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.mNumber2);
                sb2.append(this.mDot ? "." : "");
                sb2.append(buttonText);
                this.mNumber2 = sb2.toString();
            }
            TextView textView = this.mDisplay;
            textView.setText(displayText + tmp);
            this.mDot = false;
        } catch (Exception e) {
            if ("0".equals(this.mNumber1) && "0".equals(this.mNumber2) && "".equals(this.mSymbol)) {
                if ("0".equals(displayText)) {
                    displayText = "";
                } else if (!"=".equals(buttonText)) {
                    this.mNumber1 = displayText;
                }
            }
            if ("=".equals(buttonText)) {
                if (this.mSymbol.equals("+")) {
                    setDisplay(Double.parseDouble(this.mNumber1) + Double.parseDouble(this.mNumber2));
                } else if (this.mSymbol.equals("-")) {
                    setDisplay(Double.parseDouble(this.mNumber1) - Double.parseDouble(this.mNumber2));
                } else if (this.mSymbol.equals("×")) {
                    setDisplay(Double.parseDouble(this.mNumber1) * Double.parseDouble(this.mNumber2));
                } else if (this.mSymbol.equals("÷")) {
                    setDisplay(Double.parseDouble(this.mNumber1) / Double.parseDouble(this.mNumber2));
                }
            } else if (".".equals(buttonText)) {
                String number = "".equals(this.mSymbol) ? this.mNumber1 : this.mNumber2;
                if (!this.mDot && !number.contains(".")) {
                    this.mDot = true;
                    TextView textView2 = this.mDisplay;
                    textView2.setText(displayText + ".");
                }
            } else {
                if (!"".equals(this.mSymbol)) {
                    if (this.mSymbol.equals("+")) {
                        this.mNumber1 = Double.toString(Double.parseDouble(this.mNumber1) + Double.parseDouble(this.mNumber2));
                    } else if (this.mSymbol.equals("-")) {
                        this.mNumber1 = Double.toString(Double.parseDouble(this.mNumber1) - Double.parseDouble(this.mNumber2));
                    } else if (this.mSymbol.equals("×")) {
                        this.mNumber1 = Double.toString(Double.parseDouble(this.mNumber1) * Double.parseDouble(this.mNumber2));
                    } else if (this.mSymbol.equals("÷")) {
                        this.mNumber1 = Double.toString(Double.parseDouble(this.mNumber1) / Double.parseDouble(this.mNumber2));
                    }
                    this.mNumber2 = "0";
                }
                this.mSymbol = buttonText;
                TextView textView3 = this.mDisplay;
                textView3.setText(displayText + " " + this.mSymbol + " ");
            }
        }
        if (this.mFakeCalculatorCode != null && this.mFakeCalculatorCode.equals(this.mDisplay.getText().toString())) {
            startApp();
        }
    }

    @SuppressLint({"SetTextI18n"})
    private void setDisplay(double value) {
        String text = Double.toString(value);
        if (text.endsWith(".0")) {
            text = text.substring(0, text.length() - 2);
        }
        this.mDisplay.setText(text);
        this.mNumber1 = "0";
        this.mNumber2 = "0";
        this.mSymbol = "";
    }

    private void startApp() {
        sUnlocked = true;
        try {
            Intent i = new Intent(this, Class.forName(this.mOriginalActivityName));
            i.addFlags(268435456);
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                i.putExtras(extras);
            }
            startActivity(i);
        } catch (Exception e) {
            Log.w(TAG, e);
        }
        finish();
    }

    private void exit() {
        if (Build.VERSION.SDK_INT >= 21) {
            finishAndRemoveTask();
        } else {
            finish();
        }
        new Thread() {
            public void run() {
                try {
                    Thread.sleep(250);
                } catch (InterruptedException e) {
                }
                System.exit(0);
            }
        }.start();
    }
}
