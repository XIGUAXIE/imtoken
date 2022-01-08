.class public final enum Lcom/subgraph/orchid/Descriptor$CacheLocation;
.super Ljava/lang/Enum;
.source "Descriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/Descriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/Descriptor$CacheLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/Descriptor$CacheLocation;

.field public static final enum CACHED_CACHEFILE:Lcom/subgraph/orchid/Descriptor$CacheLocation;

.field public static final enum CACHED_JOURNAL:Lcom/subgraph/orchid/Descriptor$CacheLocation;

.field public static final enum NOT_CACHED:Lcom/subgraph/orchid/Descriptor$CacheLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;

    const/4 v1, 0x0

    const-string v2, "NOT_CACHED"

    invoke-direct {v0, v2, v1}, Lcom/subgraph/orchid/Descriptor$CacheLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;->NOT_CACHED:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    new-instance v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;

    const/4 v2, 0x1

    const-string v3, "CACHED_CACHEFILE"

    invoke-direct {v0, v3, v2}, Lcom/subgraph/orchid/Descriptor$CacheLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;->CACHED_CACHEFILE:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    new-instance v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;

    const/4 v3, 0x2

    const-string v4, "CACHED_JOURNAL"

    invoke-direct {v0, v4, v3}, Lcom/subgraph/orchid/Descriptor$CacheLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;->CACHED_JOURNAL:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/subgraph/orchid/Descriptor$CacheLocation;

    sget-object v5, Lcom/subgraph/orchid/Descriptor$CacheLocation;->NOT_CACHED:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    aput-object v5, v4, v1

    sget-object v1, Lcom/subgraph/orchid/Descriptor$CacheLocation;->CACHED_CACHEFILE:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/subgraph/orchid/Descriptor$CacheLocation;->$VALUES:[Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/Descriptor$CacheLocation;
    .locals 1

    .line 10
    const-class v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/Descriptor$CacheLocation;
    .locals 1

    .line 10
    sget-object v0, Lcom/subgraph/orchid/Descriptor$CacheLocation;->$VALUES:[Lcom/subgraph/orchid/Descriptor$CacheLocation;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/Descriptor$CacheLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/Descriptor$CacheLocation;

    return-object v0
.end method
