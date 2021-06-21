.class public final Lbl;
.super Ljava/lang/Object;
.source "Source"


# instance fields
.field private B:Ljava/util/Vector;

.field private C:Lbm;

.field private Code:Lbk;

.field private I:Ljava/lang/String;

.field private J:Ljava/util/Enumeration;

.field private Z:Ljava/lang/String;

.field private a:I


# direct methods
.method public constructor <init>(Lbk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lbl;->a:I

    .line 28
    invoke-static {p2}, Lbk;->Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iput-object p1, p0, Lbl;->Code:Lbk;

    .line 30
    iput-object v0, p0, Lbl;->I:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lbl;->Z:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lbl;->J()V

    .line 34
    return-void
.end method

.method private static Code(Ljava/util/Vector;Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 130
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 132
    if-ltz v1, :cond_28

    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2c

    .line 134
    :cond_28
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    :goto_2b
    return-void

    .line 137
    :cond_2c
    :goto_2c
    if-lez v1, :cond_48

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_48

    .line 138
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2c

    .line 140
    :cond_48
    invoke-virtual {p0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2b
.end method

.method private J()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x4

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lbl;->a:I

    .line 39
    iget-object v0, p0, Lbl;->I:Ljava/lang/String;

    invoke-static {v0}, Ldb;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbl;->I:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lbl;->I:Ljava/lang/String;

    const-string v2, "file:///"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lbl;->I:Ljava/lang/String;

    const-string v2, "file://localhost/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 44
    :cond_23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbl;->B:Ljava/util/Vector;

    iget-object v0, p0, Lbl;->Code:Lbk;

    invoke-virtual {v0}, Lbk;->B()[Lbo;

    move-result-object v2

    move v0, v1

    :goto_31
    array-length v3, v2

    if-ge v0, v3, :cond_7c

    aget-object v3, v2, v0

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lbl;->B:Ljava/util/Vector;

    new-array v5, v4, [Ljava/lang/Object;

    aget-object v6, v2, v0

    invoke-virtual {v6}, Lbo;->I()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v9

    aget-object v6, v2, v0

    invoke-virtual {v6}, Lbo;->Code()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x0

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Lbl;->Code(Ljava/util/Vector;Ljava/lang/Object;)V

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 50
    :cond_5d
    :try_start_5d
    sget-object v0, Lar;->c:Lbk;

    iget-object v2, p0, Lbl;->I:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5}, Lbk;->Code(Ljava/lang/String;ZI)Lbm;

    move-result-object v0

    iput-object v0, p0, Lbl;->C:Lbm;

    .line 51
    iget-object v0, p0, Lbl;->C:Lbm;

    iget-object v2, p0, Lbl;->Z:Ljava/lang/String;

    invoke-interface {v0, v2}, Lbm;->Code(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lbl;->J:Ljava/util/Enumeration;
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_73} :catch_7d
    .catchall {:try_start_5d .. :try_end_73} :catchall_84

    .line 59
    iget-object v0, p0, Lbl;->C:Lbm;

    invoke-static {v0}, Ldb;->Code(Lbm;)V

    .line 61
    :goto_78
    iget-object v0, p0, Lbl;->J:Ljava/util/Enumeration;

    if-nez v0, :cond_8b

    .line 94
    :cond_7c
    :goto_7c
    return-void

    .line 59
    :catch_7d
    move-exception v0

    iget-object v0, p0, Lbl;->C:Lbm;

    invoke-static {v0}, Ldb;->Code(Lbm;)V

    goto :goto_78

    :catchall_84
    move-exception v0

    iget-object v1, p0, Lbl;->C:Lbm;

    invoke-static {v1}, Ldb;->Code(Lbm;)V

    throw v0

    .line 65
    :cond_8b
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbl;->B:Ljava/util/Vector;

    .line 66
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 67
    :goto_97
    iget-object v0, p0, Lbl;->J:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 69
    iget-object v0, p0, Lbl;->J:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    move v2, v4

    :goto_b0
    or-int/lit8 v5, v2, 0x3

    .line 83
    and-int/lit8 v2, v5, 0x4

    if-nez v2, :cond_e1

    iget-object v2, p0, Lbl;->B:Ljava/util/Vector;

    :goto_b8
    new-array v6, v4, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lbl;->I:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v9

    aput-object v0, v6, v10

    const/4 v0, 0x0

    aput-object v0, v6, v11

    invoke-static {v2, v6}, Lbl;->Code(Ljava/util/Vector;Ljava/lang/Object;)V

    goto :goto_97

    :cond_df
    move v2, v1

    .line 79
    goto :goto_b0

    :cond_e1
    move-object v2, v3

    .line 83
    goto :goto_b8

    .line 91
    :cond_e3
    :goto_e3
    iget-object v0, p0, Lbl;->B:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_f7

    .line 92
    iget-object v0, p0, Lbl;->B:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    .line 93
    :cond_f7
    iput-object v3, p0, Lbl;->B:Ljava/util/Vector;

    goto :goto_7c
.end method


# virtual methods
.method public final Code()Z
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lbl;->B:Ljava/util/Vector;

    if-eqz v0, :cond_10

    iget v0, p0, Lbl;->a:I

    iget-object v1, p0, Lbl;->B:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final I()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lbl;->Code()Z

    move-result v0

    if-nez v0, :cond_8

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lbl;->B:Ljava/util/Vector;

    iget v1, p0, Lbl;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbl;->a:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_7
.end method

.method public final Z()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lbl;->B:Ljava/util/Vector;

    .line 146
    return-void
.end method
