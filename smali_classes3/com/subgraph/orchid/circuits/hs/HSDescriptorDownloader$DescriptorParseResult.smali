.class Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;
.super Ljava/lang/Object;
.source "HSDescriptorDownloader.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptorParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
        "Lcom/subgraph/orchid/circuits/hs/HSDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

.field descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    return-void
.end method


# virtual methods
.method public documentInvalid(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;Ljava/lang/String;)V
    .locals 1

    .line 128
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid HS descriptor document received from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for descriptor "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->documentInvalid(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public documentParsed(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    return-void
.end method

.method public bridge synthetic documentParsed(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->documentParsed(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V

    return-void
.end method

.method getDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    return-object v0
.end method

.method public parsingError(Ljava/lang/String;)V
    .locals 3

    .line 132
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse HS descriptor document received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
