.class public final enum Lcom/helpscout/beacon/internal/data/realtime/EventAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/data/realtime/EventAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/data/realtime/EventAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0087\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0004j\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/EventAction;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "actionName",
        "Ljava/lang/String;",
        "getActionName",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "AGENT_DISCONNECTED",
        "Unsupported",
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
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/data/realtime/EventAction;

.field public static final enum AGENT_DISCONNECTED:Lcom/helpscout/beacon/internal/data/realtime/EventAction;

.field public static final Companion:Lcom/helpscout/beacon/internal/data/realtime/EventAction$Companion;

.field public static final enum Unsupported:Lcom/helpscout/beacon/internal/data/realtime/EventAction;


# instance fields
.field private final actionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    const/4 v2, 0x0

    const-string v3, "AGENT_DISCONNECTED"

    const-string v4, "agent-disconnected"

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->AGENT_DISCONNECTED:Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    const/4 v2, 0x1

    const-string v3, "Unsupported"

    const-string v4, ""

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/data/realtime/EventAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->Unsupported:Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->$VALUES:[Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    new-instance v0, Lcom/helpscout/beacon/internal/data/realtime/EventAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/data/realtime/EventAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->Companion:Lcom/helpscout/beacon/internal/data/realtime/EventAction$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->actionName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/data/realtime/EventAction;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/data/realtime/EventAction;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->$VALUES:[Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/data/realtime/EventAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/data/realtime/EventAction;

    return-object v0
.end method


# virtual methods
.method public final getActionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/EventAction;->actionName:Ljava/lang/String;

    return-object v0
.end method
