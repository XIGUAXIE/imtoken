.class final Lcom/subgraph/orchid/directory/DirectoryImpl$2;
.super Lcom/subgraph/orchid/directory/DescriptorCache;
.source "DirectoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/directory/DirectoryImpl;->createBasicDescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subgraph/orchid/directory/DescriptorCache<",
        "Lcom/subgraph/orchid/RouterDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/subgraph/orchid/directory/DescriptorCache;-><init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V

    return-void
.end method


# virtual methods
.method protected createDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/subgraph/orchid/directory/DirectoryImpl;->access$000()Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createRouterDescriptorParser(Ljava/nio/ByteBuffer;Z)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object p1

    return-object p1
.end method
