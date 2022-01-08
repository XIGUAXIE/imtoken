.class public abstract Lorg/apache/commons/digester/RuleSetBase;
.super Ljava/lang/Object;
.source "RuleSetBase.java"

# interfaces
.implements Lorg/apache/commons/digester/RuleSet;


# instance fields
.field protected namespaceURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/commons/digester/RuleSetBase;->namespaceURI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addRuleInstances(Lorg/apache/commons/digester/Digester;)V
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/commons/digester/RuleSetBase;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method
