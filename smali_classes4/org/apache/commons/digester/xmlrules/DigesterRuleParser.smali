.class public Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;
.super Lorg/apache/commons/digester/RuleSetBase;
.source "DigesterRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesAliasRule;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertiesAliasRule;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetRootRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNextRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetTopRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertyRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertiesRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$ObjectCreateRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$FactoryCreateRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$NodeCreateRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$ObjectParamRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$CallParamRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$CallMethodRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$BeanPropertySetterRuleFactory;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$RulesPrefixAdapter;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$IncludeRule;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;,
        Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;
    }
.end annotation


# static fields
.field public static final DIGESTER_PUBLIC_ID:Ljava/lang/String; = "-//Jakarta Apache //DTD digester-rules XML V1.0//EN"


# instance fields
.field protected basePath:Ljava/lang/String;

.field private digesterDtdUrl:Ljava/lang/String;

.field private includedFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected patternStack:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected targetDigester:Lorg/apache/commons/digester/Digester;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Lorg/apache/commons/digester/RuleSetBase;-><init>()V

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->basePath:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->includedFiles:Ljava/util/Set;

    .line 124
    new-instance v0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;

    invoke-direct {v0, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    iput-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->patternStack:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/digester/Digester;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Lorg/apache/commons/digester/RuleSetBase;-><init>()V

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->basePath:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->includedFiles:Ljava/util/Set;

    .line 133
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->targetDigester:Lorg/apache/commons/digester/Digester;

    .line 134
    new-instance p1, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;

    invoke-direct {p1, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->patternStack:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/digester/Digester;Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/digester/Digester;",
            "Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lorg/apache/commons/digester/RuleSetBase;-><init>()V

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->basePath:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->includedFiles:Ljava/util/Set;

    .line 149
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->targetDigester:Lorg/apache/commons/digester/Digester;

    .line 150
    iput-object p2, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->patternStack:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;

    .line 151
    iput-object p3, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->includedFiles:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/digester/Digester;Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;Ljava/util/Set;Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;-><init>(Lorg/apache/commons/digester/Digester;Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)Ljava/util/Set;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->includedFiles:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/commons/digester/Rule;)V
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->targetDigester:Lorg/apache/commons/digester/Digester;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->patternStack:Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;

    invoke-virtual {v2}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternStack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addRuleInstances(Lorg/apache/commons/digester/Digester;)V
    .locals 5

    .line 223
    const-class v0, Lorg/apache/commons/digester/Rule;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->getDigesterRulesDTD()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-//Jakarta Apache //DTD digester-rules XML V1.0//EN"

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/digester/Digester;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v1, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    const-string v2, "value"

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    const-string v2, "*/pattern"

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 228
    new-instance v1, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$IncludeRule;

    invoke-direct {v1, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$IncludeRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v2, "*/include"

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 230
    new-instance v1, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$BeanPropertySetterRuleFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$BeanPropertySetterRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$1;)V

    const-string v2, "*/bean-property-setter-rule"

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 231
    new-instance v1, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    const-string v3, "pattern"

    invoke-direct {v1, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    const-string v1, "add"

    .line 232
    invoke-virtual {p1, v2, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$CallMethodRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$CallMethodRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/call-method-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 235
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 236
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$ObjectParamRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$ObjectParamRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/object-param-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 239
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 240
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$CallParamRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$CallParamRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/call-param-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 243
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 244
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$FactoryCreateRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$FactoryCreateRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/factory-create-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 247
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 248
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$ObjectCreateRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$ObjectCreateRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/object-create-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 251
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 252
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$NodeCreateRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$NodeCreateRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/node-create-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 255
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 256
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertiesRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertiesRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/set-properties-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 259
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 260
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertiesAliasRule;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertiesAliasRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/set-properties-rule/alias"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 264
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertyRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetPropertyRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/set-property-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 265
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 266
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/set-nested-properties-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 269
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 270
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesAliasRule;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNestedPropertiesAliasRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/set-nested-properties-rule/alias"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 274
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetTopRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetTopRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/set-top-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 275
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 276
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNextRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetNextRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/set-next-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 279
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 280
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetRootRuleFactory;

    invoke-direct {v2, p0}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$SetRootRuleFactory;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;)V

    const-string v4, "*/set-root-rule"

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V

    .line 282
    new-instance v2, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser$PatternRule;-><init>(Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;Ljava/lang/String;)V

    invoke-virtual {p1, v4, v2}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    .line 283
    invoke-virtual {p1, v4, v1, v0}, Lorg/apache/commons/digester/Digester;->addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getDigesterRulesDTD()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->digesterDtdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBasePath(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 171
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->basePath:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->basePath:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->basePath:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setDigesterRulesDTD(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->digesterDtdUrl:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Lorg/apache/commons/digester/Digester;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/apache/commons/digester/xmlrules/DigesterRuleParser;->targetDigester:Lorg/apache/commons/digester/Digester;

    return-void
.end method
