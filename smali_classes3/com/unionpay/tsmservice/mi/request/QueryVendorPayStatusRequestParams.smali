.class public Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;
.super Lcom/unionpay/tsmservice/mi/request/RequestParams;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams$1;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams$1;-><init>()V

    sput-object v0, Lcom/unionpay/tsmservice/mi/request/QueryVendorPayStatusRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/tsmservice/mi/request/RequestParams;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/tsmservice/mi/request/RequestParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unionpay/tsmservice/mi/request/RequestParams;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
