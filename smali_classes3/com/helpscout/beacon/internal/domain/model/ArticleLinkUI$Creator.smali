.class public final Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {}
    d2 = {}
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;
    .locals 0

    new-array p1, p1, [Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI$Creator;->newArray(I)[Lcom/helpscout/beacon/internal/domain/model/ArticleLinkUI;

    move-result-object p1

    return-object p1
.end method
