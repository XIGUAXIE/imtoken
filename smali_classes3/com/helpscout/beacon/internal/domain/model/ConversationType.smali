.class public final enum Lcom/helpscout/beacon/internal/domain/model/ConversationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/domain/model/ConversationType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/domain/model/ConversationType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CHAT",
        "MESSAGE",
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
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/domain/model/ConversationType;

.field public static final enum CHAT:Lcom/helpscout/beacon/internal/domain/model/ConversationType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "chat"
    .end annotation
.end field

.field public static final enum MESSAGE:Lcom/helpscout/beacon/internal/domain/model/ConversationType;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "message"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    new-instance v1, Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    const/4 v2, 0x0

    const-string v3, "CHAT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/domain/model/ConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/domain/model/ConversationType;->CHAT:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    const/4 v2, 0x1

    const-string v3, "MESSAGE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/domain/model/ConversationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/domain/model/ConversationType;->MESSAGE:Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/ConversationType;->$VALUES:[Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/domain/model/ConversationType;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/domain/model/ConversationType;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/ConversationType;->$VALUES:[Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/domain/model/ConversationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/domain/model/ConversationType;

    return-object v0
.end method
