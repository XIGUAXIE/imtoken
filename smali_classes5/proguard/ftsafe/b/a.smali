.class public final enum Lproguard/ftsafe/b/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lproguard/ftsafe/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lproguard/ftsafe/b/a;

.field public static final enum b:Lproguard/ftsafe/b/a;

.field public static final enum c:Lproguard/ftsafe/b/a;

.field public static final enum d:Lproguard/ftsafe/b/a;

.field private static final synthetic e:[Lproguard/ftsafe/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lproguard/ftsafe/b/a;

    const/4 v1, 0x0

    const-string v2, "STATE_CONNECTED"

    invoke-direct {v0, v2, v1}, Lproguard/ftsafe/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproguard/ftsafe/b/a;->a:Lproguard/ftsafe/b/a;

    new-instance v0, Lproguard/ftsafe/b/a;

    const/4 v2, 0x1

    const-string v3, "STATE_CONNECTING"

    invoke-direct {v0, v3, v2}, Lproguard/ftsafe/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproguard/ftsafe/b/a;->b:Lproguard/ftsafe/b/a;

    new-instance v0, Lproguard/ftsafe/b/a;

    const/4 v3, 0x2

    const-string v4, "STATE_DISCONNECTED"

    invoke-direct {v0, v4, v3}, Lproguard/ftsafe/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    new-instance v0, Lproguard/ftsafe/b/a;

    const/4 v4, 0x3

    const-string v5, "STATE_DISCONNECTING"

    invoke-direct {v0, v5, v4}, Lproguard/ftsafe/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproguard/ftsafe/b/a;->d:Lproguard/ftsafe/b/a;

    const/4 v5, 0x4

    new-array v5, v5, [Lproguard/ftsafe/b/a;

    sget-object v6, Lproguard/ftsafe/b/a;->a:Lproguard/ftsafe/b/a;

    aput-object v6, v5, v1

    sget-object v1, Lproguard/ftsafe/b/a;->b:Lproguard/ftsafe/b/a;

    aput-object v1, v5, v2

    sget-object v1, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lproguard/ftsafe/b/a;->e:[Lproguard/ftsafe/b/a;

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

.method public static valueOf(Ljava/lang/String;)Lproguard/ftsafe/b/a;
    .locals 1

    const-class v0, Lproguard/ftsafe/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lproguard/ftsafe/b/a;

    return-object p0
.end method

.method public static values()[Lproguard/ftsafe/b/a;
    .locals 1

    sget-object v0, Lproguard/ftsafe/b/a;->e:[Lproguard/ftsafe/b/a;

    invoke-virtual {v0}, [Lproguard/ftsafe/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lproguard/ftsafe/b/a;

    return-object v0
.end method
