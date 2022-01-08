.class Lim/imkey/imkeylibrary/bluetooth/BleDevice$1;
.super Ljava/lang/Object;
.source "BleDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/bluetooth/BleDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lim/imkey/imkeylibrary/bluetooth/BleDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;
    .locals 1

    .line 64
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    invoke-direct {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice$1;->createFromParcel(Landroid/os/Parcel;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lim/imkey/imkeylibrary/bluetooth/BleDevice;
    .locals 0

    .line 69
    new-array p1, p1, [Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice$1;->newArray(I)[Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    move-result-object p1

    return-object p1
.end method
