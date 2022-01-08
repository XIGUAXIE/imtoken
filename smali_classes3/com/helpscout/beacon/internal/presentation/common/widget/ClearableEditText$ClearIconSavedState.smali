.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClearIconSavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0011\u0008\u0012\u0012\u0006\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fB\u001b\u0008\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u0012J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;",
        "Landroid/view/View$BaseSavedState;",
        "Landroid/os/Parcel;",
        "out",
        "",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "",
        "isClearIconShown",
        "Z",
        "()Z",
        "source",
        "<init>",
        "(Landroid/os/Parcel;)V",
        "Landroid/os/Parcelable;",
        "superState",
        "(Landroid/os/Parcelable;Z)V",
        "Companion",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion;


# instance fields
.field private final isClearIconShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState$Companion$CREATOR$1;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;->isClearIconShown:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;->isClearIconShown:Z

    return-void
.end method


# virtual methods
.method public final isClearIconShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;->isClearIconShown:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/ClearableEditText$ClearIconSavedState;->isClearIconShown:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
