.class public final Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter;",
        "",
        "",
        "json",
        "Lcom/helpscout/beacon/model/FocusMode;",
        "fromJson",
        "(Ljava/lang/String;)Lcom/helpscout/beacon/model/FocusMode;",
        "focusMode",
        "toJson",
        "(Lcom/helpscout/beacon/model/FocusMode;)Ljava/lang/String;",
        "<init>",
        "()V",
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
.field public static final Companion:Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter$Companion;

.field public static final askFirstJSON:Ljava/lang/String; = "askFirst"

.field public static final neutralJSON:Ljava/lang/String; = "neutral"

.field public static final selfServiceJSON:Ljava/lang/String; = "selfService"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter;->Companion:Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/helpscout/beacon/model/FocusMode;
    .locals 2
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x259ef449

    if-eq v0, v1, :cond_2

    const v1, 0xdc901c9

    if-eq v0, v1, :cond_1

    const v1, 0x6dee1dc7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "neutral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "selfService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/helpscout/beacon/model/FocusMode;->SELF_SERVICE:Lcom/helpscout/beacon/model/FocusMode;

    goto :goto_1

    :cond_2
    const-string v0, "askFirst"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/helpscout/beacon/model/FocusMode;->ASK_FIRST:Lcom/helpscout/beacon/model/FocusMode;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Lcom/helpscout/beacon/model/FocusMode;->NEUTRAL:Lcom/helpscout/beacon/model/FocusMode;

    :goto_1
    return-object p1
.end method

.method public final toJson(Lcom/helpscout/beacon/model/FocusMode;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/squareup/moshi/ToJson;
    .end annotation

    const-string v0, "focusMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/adapter/BeaconFocusModeArticleAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p1, "askFirst"

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "neutral"

    goto :goto_0

    :cond_2
    const-string p1, "selfService"

    :goto_0
    return-object p1
.end method
