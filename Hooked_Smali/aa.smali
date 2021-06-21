.class public final Laa;
.super Ljava/lang/Object;
.source "Source"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final Code:Landroid/os/Parcelable$Creator;


# instance fields
.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private Z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Laa$1;

    invoke-direct {v0}, Laa$1;-><init>()V

    sput-object v0, Laa;->Code:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laa;->I:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laa;->Z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laa;->J:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Laa;->I:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Laa;->Z:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Laa;->J:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public final Code()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Laa;->I:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Laa;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Laa;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Laa;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Laa;->Z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Laa;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
