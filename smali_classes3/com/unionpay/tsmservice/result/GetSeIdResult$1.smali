.class final Lcom/unionpay/tsmservice/result/GetSeIdResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/unionpay/tsmservice/result/GetSeIdResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/unionpay/tsmservice/result/GetSeIdResult;
    .locals 1

    new-instance v0, Lcom/unionpay/tsmservice/result/GetSeIdResult;

    invoke-direct {v0, p1}, Lcom/unionpay/tsmservice/result/GetSeIdResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/result/GetSeIdResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unionpay/tsmservice/result/GetSeIdResult;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/unionpay/tsmservice/result/GetSeIdResult;
    .locals 0

    new-array p1, p1, [Lcom/unionpay/tsmservice/result/GetSeIdResult;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/result/GetSeIdResult$1;->newArray(I)[Lcom/unionpay/tsmservice/result/GetSeIdResult;

    move-result-object p1

    return-object p1
.end method
