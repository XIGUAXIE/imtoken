.class public final enum Lcom/subgraph/orchid/DirectoryStore$CacheFile;
.super Ljava/lang/Enum;
.source "DirectoryStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/DirectoryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field public static final enum CERTIFICATES:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field public static final enum CONSENSUS:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field public static final enum CONSENSUS_MICRODESC:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field public static final enum DESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field public static final enum DESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field public static final enum MICRODESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field public static final enum MICRODESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field public static final enum STATE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;


# instance fields
.field private final filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/4 v1, 0x0

    const-string v2, "CERTIFICATES"

    const-string v3, "certificates"

    invoke-direct {v0, v2, v1, v3}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CERTIFICATES:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/4 v2, 0x1

    const-string v3, "CONSENSUS"

    const-string v4, "consensus"

    invoke-direct {v0, v3, v2, v4}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/4 v3, 0x2

    const-string v4, "CONSENSUS_MICRODESC"

    const-string v5, "consensus-microdesc"

    invoke-direct {v0, v4, v3, v5}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS_MICRODESC:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/4 v4, 0x3

    const-string v5, "MICRODESCRIPTOR_CACHE"

    const-string v6, "cached-microdescs"

    invoke-direct {v0, v5, v4, v6}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->MICRODESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/4 v5, 0x4

    const-string v6, "MICRODESCRIPTOR_JOURNAL"

    const-string v7, "cached-microdescs.new"

    invoke-direct {v0, v6, v5, v7}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->MICRODESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 13
    new-instance v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/4 v6, 0x5

    const-string v7, "DESCRIPTOR_CACHE"

    const-string v8, "cached-descriptors"

    invoke-direct {v0, v7, v6, v8}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->DESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 14
    new-instance v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/4 v7, 0x6

    const-string v8, "DESCRIPTOR_JOURNAL"

    const-string v9, "cached-descriptors.new"

    invoke-direct {v0, v8, v7, v9}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->DESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 15
    new-instance v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/4 v8, 0x7

    const-string v9, "STATE"

    const-string v10, "state"

    invoke-direct {v0, v9, v8, v10}, Lcom/subgraph/orchid/DirectoryStore$CacheFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->STATE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 7
    sget-object v10, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CERTIFICATES:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    aput-object v10, v9, v1

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    aput-object v1, v9, v2

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS_MICRODESC:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    aput-object v1, v9, v3

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->MICRODESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    aput-object v1, v9, v4

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->MICRODESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    aput-object v1, v9, v5

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->DESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    aput-object v1, v9, v6

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->DESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->$VALUES:[Lcom/subgraph/orchid/DirectoryStore$CacheFile;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->filename:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .locals 1

    .line 7
    const-class v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .locals 1

    .line 7
    sget-object v0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->$VALUES:[Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/DirectoryStore$CacheFile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    return-object v0
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->filename:Ljava/lang/String;

    return-object v0
.end method
