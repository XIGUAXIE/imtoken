.class final enum Lcom/helpscout/beacon/internal/presentation/ui/chat/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/k;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0012\u0008\u0082\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/k;",
        "",
        "",
        "id",
        "I",
        "a",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Companion",
        "UNKNOWN",
        "ENTRY_POINT",
        "ENTRY_POINT_COLLAPSED",
        "NO_AGENTS_EXPANDED",
        "NO_AGENTS_COLLAPSED",
        "AGENTS_EXPANDED",
        "AGENTS_COLLAPSED",
        "ASSIGNED_AGENT_EXPANDED",
        "ASSIGNED_AGENT_COLLAPSED",
        "CHAT_ENDED",
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
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum AGENTS_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum AGENTS_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum ASSIGNED_AGENT_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum ASSIGNED_AGENT_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum CHAT_ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;

.field public static final enum ENTRY_POINT:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum ENTRY_POINT_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum NO_AGENTS_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum NO_AGENTS_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

.field public static final enum UNKNOWN:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    const/4 v4, -0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->UNKNOWN:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_initial:I

    const/4 v3, 0x1

    const-string v4, "ENTRY_POINT"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->ENTRY_POINT:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_initial_collapsed:I

    const/4 v3, 0x2

    const-string v4, "ENTRY_POINT_COLLAPSED"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->ENTRY_POINT_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_no_agents_expanded:I

    const/4 v3, 0x3

    const-string v4, "NO_AGENTS_EXPANDED"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->NO_AGENTS_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_no_agents_collapsed:I

    const/4 v3, 0x4

    const-string v4, "NO_AGENTS_COLLAPSED"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->NO_AGENTS_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_agents_expanded:I

    const/4 v3, 0x5

    const-string v4, "AGENTS_EXPANDED"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->AGENTS_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_agents_collapsed:I

    const/4 v3, 0x6

    const-string v4, "AGENTS_COLLAPSED"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->AGENTS_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_agent_assigned_expanded:I

    const/4 v3, 0x7

    const-string v4, "ASSIGNED_AGENT_EXPANDED"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->ASSIGNED_AGENT_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_agent_assigned_collapsed:I

    const/16 v3, 0x8

    const-string v4, "ASSIGNED_AGENT_COLLAPSED"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->ASSIGNED_AGENT_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    sget v2, Lcom/helpscout/beacon/ui/R$id;->hs_beacon_chat_header_cs_chat_ended:I

    const/16 v3, 0x9

    const-string v4, "CHAT_ENDED"

    invoke-direct {v1, v4, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->CHAT_ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->Companion:Lcom/helpscout/beacon/internal/presentation/ui/chat/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/chat/k;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/k;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/k;->id:I

    return v0
.end method
