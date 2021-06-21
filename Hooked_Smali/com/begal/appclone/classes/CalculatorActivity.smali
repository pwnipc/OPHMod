.class public Lcom/begal/appclone/classes/CalculatorActivity;
.super Landroid/app/Activity;
.source "CalculatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static sUnlocked:Z


# instance fields
.field private mButtons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/widget/TextView;

.field private mDot:Z

.field private mFakeCalculatorCode:Ljava/lang/String;

.field private mNumber1:Ljava/lang/String;

.field private mNumber2:Ljava/lang/String;

.field private mOriginalActivityName:Ljava/lang/String;

.field private mSymbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/begal/appclone/classes/CalculatorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/begal/appclone/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mButtons:Ljava/util/Set;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    .line 43
    const-string v0, "0"

    iput-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    .line 44
    const-string v0, "0"

    iput-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/begal/appclone/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CalculatorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/begal/appclone/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CalculatorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/begal/appclone/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CalculatorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/begal/appclone/classes/CalculatorActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CalculatorActivity;

    .line 35
    iget-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/begal/appclone/classes/CalculatorActivity;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/begal/appclone/classes/CalculatorActivity;

    .line 35
    iget-object v0, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mButtons:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lcom/begal/appclone/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;
    .registers 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tableRow"    # Landroid/widget/TableRow;
    .param p3, "operator"    # Z

    .line 178
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 181
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 182
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    if-eqz p3, :cond_2d

    .line 187
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, -0x6800

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_39

    .line 189
    :cond_2d
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0x777778

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 192
    :goto_39
    iget-object v1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mButtons:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v0
.end method

.method private addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;
    .registers 7
    .param p1, "tableLayout"    # Landroid/widget/TableLayout;

    .line 168
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "tableRow":Landroid/widget/TableRow;
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/begal/appclone/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 172
    .local v1, "padding":I
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 173
    return-object v0
.end method

.method private exit()V
    .registers 3

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 307
    invoke-virtual {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->finishAndRemoveTask()V

    goto :goto_d

    .line 309
    :cond_a
    invoke-virtual {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->finish()V

    .line 312
    :goto_d
    new-instance v0, Lcom/begal/appclone/classes/CalculatorActivity$3;

    invoke-direct {v0, p0}, Lcom/begal/appclone/classes/CalculatorActivity$3;-><init>(Lcom/begal/appclone/classes/CalculatorActivity;)V

    .line 321
    invoke-virtual {v0}, Lcom/begal/appclone/classes/CalculatorActivity$3;->start()V

    .line 322
    return-void
.end method

.method private setDisplay(D)V
    .registers 6
    .param p1, "value"    # D
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 272
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "text":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_17
    iget-object v1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const-string v1, "0"

    iput-object v1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    .line 279
    const-string v1, "0"

    iput-object v1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    .line 280
    const-string v1, ""

    iput-object v1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    .line 281
    return-void
.end method

.method private startApp()V
    .registers 3

    .line 286
    const/4 v0, 0x1

    sput-boolean v0, Lcom/begal/appclone/classes/CalculatorActivity;->sUnlocked:Z

    .line 289
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 292
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_20

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 295
    :cond_20
    invoke-virtual {p0, v0}, Lcom/begal/appclone/classes/CalculatorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_24

    .line 298
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "extras":Landroid/os/Bundle;
    goto :goto_2a

    .line 296
    :catch_24
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    invoke-virtual {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->finish()V

    .line 301
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 200
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 201
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "buttonText":Ljava/lang/String;
    iget-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "displayText":Ljava/lang/String;
    :try_start_15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "tmp":I
    const-string v4, "0"

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "0"

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, ""

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 209
    const-string v4, ""

    move-object v2, v4

    .line 212
    :cond_3a
    const-string v4, ""

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDot:Z

    if-eqz v5, :cond_55

    const-string v5, "."

    goto :goto_57

    :cond_55
    const-string v5, ""

    :goto_57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_83

    .line 215
    :cond_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDot:Z

    if-eqz v5, :cond_75

    const-string v5, "."

    goto :goto_77

    :cond_75
    const-string v5, ""

    :goto_77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    .line 217
    :goto_83
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDot:Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_9a} :catch_9c

    .line 262
    .end local v3    # "tmp":I
    goto/16 :goto_22f

    .line 220
    :catch_9c
    move-exception v3

    .line 222
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "0"

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    const-string v4, "0"

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    const-string v4, ""

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 223
    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 224
    const-string v2, ""

    goto :goto_d0

    .line 225
    :cond_c6
    const-string v4, "="

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d0

    .line 226
    iput-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    .line 230
    :cond_d0
    :goto_d0
    const-string v4, "="

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 231
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 232
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->setDisplay(D)V

    goto/16 :goto_22f

    .line 233
    :cond_f4
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 234
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->setDisplay(D)V

    goto/16 :goto_22f

    .line 235
    :cond_110
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v5, "\u00d7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 236
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-direct {p0, v4, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->setDisplay(D)V

    goto/16 :goto_22f

    .line 237
    :cond_12d
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v5, "\u00f7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22f

    .line 238
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->setDisplay(D)V

    goto/16 :goto_22f

    .line 240
    :cond_149
    const-string v4, "."

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_187

    .line 241
    const-string v4, ""

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15e

    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_160

    :cond_15e
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    .line 242
    .local v4, "number":Ljava/lang/String;
    :goto_160
    iget-boolean v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDot:Z

    if-nez v5, :cond_185

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_185

    .line 243
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDot:Z

    .line 244
    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .end local v4    # "number":Ljava/lang/String;
    :cond_185
    goto/16 :goto_22f

    .line 247
    :cond_187
    const-string v4, ""

    iget-object v5, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20d

    .line 248
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1af

    .line 249
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_209

    .line 250
    :cond_1af
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cd

    .line 251
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_209

    .line 252
    :cond_1cd
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v5, "\u00d7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ec

    .line 253
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_209

    .line 254
    :cond_1ec
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v5, "\u00f7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_209

    .line 255
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    .line 257
    :cond_209
    :goto_209
    const-string v4, "0"

    iput-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    .line 259
    :cond_20d
    iput-object v1, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    .line 260
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_22f
    :goto_22f
    iget-object v3, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mFakeCalculatorCode:Ljava/lang/String;

    if-eqz v3, :cond_248

    iget-object v3, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mFakeCalculatorCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_248

    .line 265
    invoke-direct {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->startApp()V

    .line 267
    :cond_248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    :try_start_3
    invoke-virtual {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 57
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 58
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_4f

    .line 59
    const-string v2, "com.begal.appclone.originalActivityName"

    .line 60
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 64
    :cond_42
    invoke-static {p0}, Lcom/begal/appclone/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/begal/appclone/classes/CloneSettings;

    move-result-object v2

    .line 65
    .local v2, "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    const-string v3, "fakeCalculatorCode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/begal/appclone/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mFakeCalculatorCode:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4f} :catch_50

    .line 70
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "metaData":Landroid/os/Bundle;
    .end local v2    # "cloneSettings":Lcom/begal/appclone/classes/CloneSettings;
    :cond_4f
    goto :goto_59

    .line 67
    :catch_50
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/begal/appclone/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    invoke-direct {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->exit()V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    const v0, 0x103000e

    const v1, -0xbbbbbc

    :try_start_5f
    invoke-virtual {p0, v0}, Lcom/begal/appclone/classes/CalculatorActivity;->setTheme(I)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v0, v2, :cond_76

    .line 75
    invoke-virtual {p0}, Lcom/begal/appclone/classes/CalculatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 76
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_76

    .line 77
    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_76} :catch_77

    .line 83
    .end local v0    # "window":Landroid/view/Window;
    :cond_76
    goto :goto_7d

    .line 81
    :catch_77
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/begal/appclone/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7d
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/begal/appclone/classes/CalculatorActivity;->setContentView(Landroid/view/View;)V

    .line 92
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    const v4, 0x800005

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/begal/appclone/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 97
    .local v2, "padding":I
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v2, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 102
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_de

    const/4 v6, 0x1

    goto :goto_df

    :cond_de
    const/4 v6, 0x2

    :goto_df
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/begal/appclone/classes/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_ec

    const/4 v7, 0x1

    nop

    :cond_ec
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 104
    iget-object v4, p0, Lcom/begal/appclone/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    new-instance v4, Landroid/widget/TableLayout;

    invoke-direct {v4, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 107
    .local v4, "tableLayout":Landroid/widget/TableLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-direct {p0, v4}, Lcom/begal/appclone/classes/CalculatorActivity;->addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;

    move-result-object v3

    .line 112
    .local v3, "tableRow":Landroid/widget/TableRow;
    const-string v6, "7"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 113
    const-string v6, "8"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 114
    const-string v6, "9"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 115
    const-string v6, "\u00f7"

    invoke-direct {p0, v6, v3, v1}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 116
    invoke-direct {p0, v4}, Lcom/begal/appclone/classes/CalculatorActivity;->addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;

    move-result-object v3

    .line 117
    const-string v6, "4"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 118
    const-string v6, "5"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 119
    const-string v6, "6"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 120
    const-string v6, "\u00d7"

    invoke-direct {p0, v6, v3, v1}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 121
    invoke-direct {p0, v4}, Lcom/begal/appclone/classes/CalculatorActivity;->addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;

    move-result-object v3

    .line 122
    const-string v6, "1"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 123
    const-string v6, "2"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 124
    const-string v6, "3"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 125
    const-string v6, "-"

    invoke-direct {p0, v6, v3, v1}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 126
    invoke-direct {p0, v4}, Lcom/begal/appclone/classes/CalculatorActivity;->addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;

    move-result-object v3

    .line 127
    const-string v6, "0"

    invoke-direct {p0, v6, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    move-result-object v6

    .line 128
    .local v6, "zeroButton":Landroid/widget/Button;
    const-string v7, "."

    invoke-direct {p0, v7, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 129
    const-string v7, "="

    invoke-direct {p0, v7, v3, v5}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 130
    const-string v5, "+"

    invoke-direct {p0, v5, v3, v1}, Lcom/begal/appclone/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 132
    new-instance v1, Lcom/begal/appclone/classes/CalculatorActivity$1;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/CalculatorActivity$1;-><init>(Lcom/begal/appclone/classes/CalculatorActivity;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    new-instance v1, Lcom/begal/appclone/classes/CalculatorActivity$2;

    invoke-direct {v1, p0}, Lcom/begal/appclone/classes/CalculatorActivity$2;-><init>(Lcom/begal/appclone/classes/CalculatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 163
    const-string v1, "Calculator"

    invoke-virtual {p0, v1}, Lcom/begal/appclone/classes/CalculatorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method
