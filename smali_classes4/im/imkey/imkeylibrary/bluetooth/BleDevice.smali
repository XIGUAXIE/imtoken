.class public Lim/imkey/imkeylibrary/bluetooth/BleDevice;
.super Ljava/lang/Object;
.source "BleDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lim/imkey/imkeylibrary/bluetooth/BleDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private final devRssi:I

.field private final devType:I

.field private final radioDevName:Ljava/lang/String;

.field private final radioDevUUID:Ljava/lang/String;

.field private final radioManufacturerData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/BleDevice$1;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/bluetooth/BleDevice$1;-><init>()V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devType:I

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevUUID:Ljava/lang/String;

    .line 24
    iput p1, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devRssi:I

    .line 25
    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioManufacturerData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 30
    iput p2, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devType:I

    .line 31
    iput-object p3, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevUUID:Ljava/lang/String;

    .line 33
    iput p5, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devRssi:I

    .line 34
    iput-object p6, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioManufacturerData:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devType:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devRssi:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevName:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevUUID:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioManufacturerData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 98
    instance-of v0, p1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 74
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public final getDevRssi()I
    .locals 1

    .line 82
    iget v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devRssi:I

    return v0
.end method

.method public final getDevType()I
    .locals 1

    .line 78
    iget v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devType:I

    return v0
.end method

.method public final getRadioDevName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRadioManufacturerData()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioManufacturerData:Ljava/lang/String;

    return-object v0
.end method

.method public final getRadioUUID()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevUUID:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 102
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 106
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    iget p2, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget p2, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->devRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object p2, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioDevUUID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->radioManufacturerData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
