.class public Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;
.super Landroid/app/Activity;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/begal/appclone/classes/LogcatViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogcatActivity"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTextView:Landroid/widget/TextView;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 251
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 253
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1100(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)Landroid/widget/ScrollView;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    .line 251
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    .line 251
    iget-boolean v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$602(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;
    .param p1, "x1"    # Z

    .line 251
    iput-boolean p1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mPaused:Z

    return p1
.end method

.method static synthetic access$700(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    .line 251
    invoke-direct {p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->showLogsDelayed()V

    return-void
.end method

.method static synthetic access$800(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    .line 251
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;

    .line 251
    invoke-direct {p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->showLogs()V

    return-void
.end method

.method private showLogs()V
    .registers 6

    .line 354
    iget-boolean v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mPaused:Z

    if-nez v0, :cond_26

    .line 355
    const/16 v0, 0x3e8

    # invokes: Lcom/begal/appclone/classes/LogcatViewer;->getLogs(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/begal/appclone/classes/LogcatViewer;->access$1000(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "logs":Ljava/lang/String;
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 358
    # getter for: Lcom/begal/appclone/classes/LogcatViewer;->sAutoScroll:Z
    invoke-static {}, Lcom/begal/appclone/classes/LogcatViewer;->access$100()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 359
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    new-instance v2, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$5;

    invoke-direct {v2, p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$5;-><init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V

    const-wide/16 v3, 0x2ee

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    .end local v0    # "logs":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private showLogsDelayed()V
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$4;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$4;-><init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logcat of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    const-string v1, "monospace"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    const v1, -0xa0a0b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    const v1, -0xf2b85f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 270
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p0, v0}, Lcom/begal/appclone/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 271
    .local v0, "padding":I
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 272
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;

    invoke-direct {v3, p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$1;-><init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    const-string v1, "Double-tap to pause"

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 298
    new-instance v1, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$2;-><init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 305
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 306
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->setContentView(Landroid/view/View;)V

    .line 311
    invoke-direct {p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->showLogs()V

    .line 313
    new-instance v1, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$3;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity$3;-><init>(Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;)V

    iput-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    .line 329
    iget-object v1, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 330
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 336
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 337
    iget-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/begal/appclone/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    .line 340
    :cond_f
    return-void
.end method
