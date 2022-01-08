.class public final Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB!\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0008R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0004\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;",
        "Ljava/io/Serializable;",
        "Lcom/helpscout/beacon/model/BeaconScreens;",
        "component1",
        "()Lcom/helpscout/beacon/model/BeaconScreens;",
        "",
        "",
        "component2",
        "()Ljava/util/List;",
        "screen",
        "args",
        "copy",
        "(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;)Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getArgs",
        "Lcom/helpscout/beacon/model/BeaconScreens;",
        "getScreen",
        "<init>",
        "(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;)V",
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
.field public static final Companion:Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector$Companion;


# instance fields
.field private final args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final screen:Lcom/helpscout/beacon/model/BeaconScreens;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->Companion:Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;-><init>(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/model/BeaconScreens;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->screen:Lcom/helpscout/beacon/model/BeaconScreens;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->args:Ljava/util/List;

    sget-object v0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/helpscout/beacon/SDKInitException;

    const-string p2, "You cannot open a search screen without adding a search term"

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    :goto_2
    return-void

    :cond_5
    new-instance p1, Lcom/helpscout/beacon/SDKInitException;

    const-string p2, "You cannot open an article screen without adding an article id"

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lcom/helpscout/beacon/model/BeaconScreens;->DEFAULT:Lcom/helpscout/beacon/model/BeaconScreens;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;-><init>(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->screen:Lcom/helpscout/beacon/model/BeaconScreens;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->args:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->copy(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;)Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/helpscout/beacon/model/BeaconScreens;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->screen:Lcom/helpscout/beacon/model/BeaconScreens;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->args:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;)Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/model/BeaconScreens;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;"
        }
    .end annotation

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    invoke-direct {v0, p1, p2}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;-><init>(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->screen:Lcom/helpscout/beacon/model/BeaconScreens;

    iget-object v1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->screen:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->args:Ljava/util/List;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->args:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->args:Ljava/util/List;

    return-object v0
.end method

.method public final getScreen()Lcom/helpscout/beacon/model/BeaconScreens;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->screen:Lcom/helpscout/beacon/model/BeaconScreens;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->screen:Lcom/helpscout/beacon/model/BeaconScreens;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->args:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeaconScreenSelector(screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->screen:Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->args:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
