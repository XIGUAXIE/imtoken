.class public abstract Lorg/apache/commons/digester/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# instance fields
.field protected digester:Lorg/apache/commons/digester/Digester;

.field protected namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/apache/commons/digester/Rule;->digester:Lorg/apache/commons/digester/Digester;

    .line 92
    iput-object v0, p0, Lorg/apache/commons/digester/Rule;->namespaceURI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/apache/commons/digester/Rule;->digester:Lorg/apache/commons/digester/Digester;

    .line 92
    iput-object v0, p0, Lorg/apache/commons/digester/Rule;->namespaceURI:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Rule;->setDigester(Lorg/apache/commons/digester/Digester;)V

    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p3}, Lorg/apache/commons/digester/Rule;->begin(Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public begin(Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public body(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public body(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p3}, Lorg/apache/commons/digester/Rule;->body(Ljava/lang/String;)V

    return-void
.end method

.method public end()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/digester/Rule;->end()V

    return-void
.end method

.method public finish()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public getDigester()Lorg/apache/commons/digester/Digester;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/digester/Rule;->digester:Lorg/apache/commons/digester/Digester;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/commons/digester/Rule;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public setDigester(Lorg/apache/commons/digester/Digester;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/apache/commons/digester/Rule;->digester:Lorg/apache/commons/digester/Digester;

    return-void
.end method

.method public setNamespaceURI(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/apache/commons/digester/Rule;->namespaceURI:Ljava/lang/String;

    return-void
.end method
