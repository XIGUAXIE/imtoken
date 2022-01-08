.class public final enum Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

.field public static final enum ADDING_FEEDBACK_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

.field public static final enum ADDING_FEEDBACK_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

.field public static final enum IDLE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

.field public static final enum RATING:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

.field public static final enum RATING_SENT:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

.field public static final enum RATING_SKIPPED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    const/4 v2, 0x0

    const-string v3, "IDLE"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->IDLE:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    const/4 v2, 0x1

    const-string v3, "RATING"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->RATING:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    const/4 v2, 0x2

    const-string v3, "ADDING_FEEDBACK_COLLAPSED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->ADDING_FEEDBACK_COLLAPSED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    const/4 v2, 0x3

    const-string v3, "ADDING_FEEDBACK_EXPANDED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->ADDING_FEEDBACK_EXPANDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    const/4 v2, 0x4

    const-string v3, "RATING_SKIPPED"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->RATING_SKIPPED:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    const/4 v2, 0x5

    const-string v3, "RATING_SENT"

    invoke-direct {v1, v3, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->RATING_SENT:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->$VALUES:[Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/b;

    return-object v0
.end method
