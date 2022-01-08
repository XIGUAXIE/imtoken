.class public final enum Lcom/helpscout/beacon/internal/presentation/ui/chat/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum AGENTS_LOADED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum AGENT_ASSIGNED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum AGENT_LEFT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum AWAITING_AGENT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum CHAT_CREATION_UPDATE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum INITIAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum MESSAGE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum MISSING_EMAIL:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum ON_REMOTE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

.field public static final enum RATE_CHAT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v2, 0x0

    const-string v3, "INITIAL"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->INITIAL:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v2, 0x1

    const-string v3, "MESSAGE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->MESSAGE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v2, 0x2

    const-string v3, "CHAT_CREATION_UPDATE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->CHAT_CREATION_UPDATE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v2, 0x3

    const-string v3, "AGENTS_LOADED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AGENTS_LOADED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v2, 0x4

    const-string v3, "MISSING_EMAIL"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->MISSING_EMAIL:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v2, 0x5

    const-string v3, "ON_REMOTE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->ON_REMOTE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v2, 0x6

    const-string v3, "AWAITING_AGENT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AWAITING_AGENT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v2, 0x7

    const-string v3, "AGENT_LEFT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AGENT_LEFT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/16 v2, 0x8

    const-string v3, "AGENT_ASSIGNED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AGENT_ASSIGNED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/16 v2, 0x9

    const-string v3, "ENDED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/16 v2, 0xa

    const-string v3, "RATE_CHAT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->RATE_CHAT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/chat/i;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/i;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    return-object v0
.end method
