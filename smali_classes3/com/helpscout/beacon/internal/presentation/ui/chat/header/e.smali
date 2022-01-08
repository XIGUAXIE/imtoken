.class public final enum Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

.field public static final enum AGENTS:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

.field public static final enum AGENT_ASSIGNED:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

.field public static final enum AGENT_LEFT:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

.field public static final enum ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

.field public static final enum INITIAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    const/4 v2, 0x0

    const-string v3, "INITIAL"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->INITIAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    const/4 v2, 0x1

    const-string v3, "AGENTS"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->AGENTS:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    const/4 v2, 0x2

    const-string v3, "AGENT_LEFT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->AGENT_LEFT:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    const/4 v2, 0x3

    const-string v3, "AGENT_ASSIGNED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->AGENT_ASSIGNED:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    const/4 v2, 0x4

    const-string v3, "ENDED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/header/e;

    return-object v0
.end method
