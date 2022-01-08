.class public Lorg/apache/commons/digester/Digester;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Digester.java"


# static fields
.field protected static final W3C_XML_SCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"


# instance fields
.field protected JAXP_SCHEMA_LANGUAGE:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected bodyText:Ljava/lang/StringBuffer;

.field protected bodyTexts:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/StringBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected classLoader:Ljava/lang/ClassLoader;

.field protected configured:Z

.field private customContentHandler:Lorg/xml/sax/ContentHandler;

.field protected entityResolver:Lorg/xml/sax/EntityResolver;

.field protected entityValidator:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field protected errorHandler:Lorg/xml/sax/ErrorHandler;

.field protected factory:Ljavax/xml/parsers/SAXParserFactory;

.field protected inputSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xml/sax/InputSource;",
            ">;"
        }
    .end annotation
.end field

.field protected locator:Lorg/xml/sax/Locator;

.field protected log:Lorg/apache/commons/logging/Log;

.field protected match:Ljava/lang/String;

.field protected matches:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected namespaceAware:Z

.field protected namespaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected params:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected parser:Ljavax/xml/parsers/SAXParser;

.field protected publicId:Ljava/lang/String;

.field protected reader:Lorg/xml/sax/XMLReader;

.field protected root:Ljava/lang/Object;

.field protected rules:Lorg/apache/commons/digester/Rules;

.field protected saxLog:Lorg/apache/commons/logging/Log;

.field protected schema:Ljavax/xml/validation/Schema;

.field protected schemaLanguage:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected schemaLocation:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private stackAction:Lorg/apache/commons/digester/StackAction;

.field private stacksByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected substitutor:Lorg/apache/commons/digester/Substitutor;

.field protected useContextClassLoader:Z

.field protected validating:Z

.field protected xincludeAware:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    .line 154
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->bodyTexts:Ljava/util/Stack;

    .line 167
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->matches:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    .line 181
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->configured:Z

    .line 193
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->entityValidator:Ljava/util/HashMap;

    .line 200
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 206
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 212
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->JAXP_SCHEMA_LANGUAGE:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    const-string v2, ""

    .line 225
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    .line 231
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->namespaceAware:Z

    .line 242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    .line 248
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->xincludeAware:Z

    .line 257
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    .line 263
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->parser:Ljavax/xml/parsers/SAXParser;

    .line 270
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->publicId:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    .line 283
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    .line 292
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->rules:Lorg/apache/commons/digester/Rules;

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    .line 301
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->schemaLanguage:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    .line 318
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->schema:Ljavax/xml/validation/Schema;

    .line 324
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    .line 331
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->useContextClassLoader:Z

    .line 337
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->validating:Z

    const-string v1, "org.apache.commons.digester.Digester"

    .line 343
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "org.apache.commons.digester.Digester.sax"

    .line 350
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    .line 367
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    .line 378
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    .line 384
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    .line 2059
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->inputSources:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/parsers/SAXParser;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    .line 154
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->bodyTexts:Ljava/util/Stack;

    .line 167
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->matches:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    .line 181
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->configured:Z

    .line 193
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->entityValidator:Ljava/util/HashMap;

    .line 200
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 206
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 212
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->JAXP_SCHEMA_LANGUAGE:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    const-string v2, ""

    .line 225
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    .line 231
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->namespaceAware:Z

    .line 242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    .line 248
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->xincludeAware:Z

    .line 257
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    .line 263
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->parser:Ljavax/xml/parsers/SAXParser;

    .line 270
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->publicId:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    .line 283
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    .line 292
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->rules:Lorg/apache/commons/digester/Rules;

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    .line 301
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->schemaLanguage:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    .line 318
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->schema:Ljavax/xml/validation/Schema;

    .line 324
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    .line 331
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->useContextClassLoader:Z

    .line 337
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->validating:Z

    const-string v1, "org.apache.commons.digester.Digester"

    .line 343
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "org.apache.commons.digester.Digester.sax"

    .line 350
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    .line 367
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    .line 378
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    .line 384
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    .line 2059
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->inputSources:Ljava/util/List;

    .line 121
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->parser:Ljavax/xml/parsers/SAXParser;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    .line 154
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->bodyTexts:Ljava/util/Stack;

    .line 167
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->matches:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    .line 181
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->configured:Z

    .line 193
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->entityValidator:Ljava/util/HashMap;

    .line 200
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 206
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    const-string v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 212
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->JAXP_SCHEMA_LANGUAGE:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    const-string v2, ""

    .line 225
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    .line 231
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->namespaceAware:Z

    .line 242
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    .line 248
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->xincludeAware:Z

    .line 257
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    .line 263
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->parser:Ljavax/xml/parsers/SAXParser;

    .line 270
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->publicId:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    .line 283
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    .line 292
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->rules:Lorg/apache/commons/digester/Rules;

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    .line 301
    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->schemaLanguage:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    .line 318
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->schema:Ljavax/xml/validation/Schema;

    .line 324
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    .line 331
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->useContextClassLoader:Z

    .line 337
    iput-boolean v1, p0, Lorg/apache/commons/digester/Digester;->validating:Z

    const-string v1, "org.apache.commons.digester.Digester"

    .line 343
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "org.apache.commons.digester.Digester.sax"

    .line 350
    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    .line 367
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    .line 378
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    .line 384
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    .line 2059
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->inputSources:Ljava/util/List;

    .line 137
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    return-void
.end method


# virtual methods
.method public addBeanPropertySetter(Ljava/lang/String;)V
    .locals 1

    .line 2175
    new-instance v0, Lorg/apache/commons/digester/BeanPropertySetterRule;

    invoke-direct {v0}, Lorg/apache/commons/digester/BeanPropertySetterRule;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addBeanPropertySetter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2191
    new-instance v0, Lorg/apache/commons/digester/BeanPropertySetterRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/BeanPropertySetterRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallMethod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2205
    new-instance v0, Lorg/apache/commons/digester/CallMethodRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/CallMethodRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallMethod(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2223
    new-instance v0, Lorg/apache/commons/digester/CallMethodRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/CallMethodRule;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallMethod(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2279
    new-instance v0, Lorg/apache/commons/digester/CallMethodRule;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/commons/digester/CallMethodRule;-><init>(Ljava/lang/String;I[Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallMethod(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .line 2250
    new-instance v0, Lorg/apache/commons/digester/CallMethodRule;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/commons/digester/CallMethodRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallParam(Ljava/lang/String;I)V
    .locals 1

    .line 2298
    new-instance v0, Lorg/apache/commons/digester/CallParamRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/CallParamRule;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallParam(Ljava/lang/String;II)V
    .locals 1

    .line 2350
    new-instance v0, Lorg/apache/commons/digester/CallParamRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/CallParamRule;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallParam(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 2317
    new-instance v0, Lorg/apache/commons/digester/CallParamRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/CallParamRule;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallParam(Ljava/lang/String;IZ)V
    .locals 1

    .line 2334
    new-instance v0, Lorg/apache/commons/digester/CallParamRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/CallParamRule;-><init>(IZ)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addCallParamPath(Ljava/lang/String;I)V
    .locals 1

    .line 2365
    new-instance v0, Lorg/apache/commons/digester/PathCallParamRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/PathCallParamRule;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2421
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2457
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2561
    new-instance v0, Lorg/apache/commons/digester/FactoryCreateRule;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2513
    new-instance v0, Lorg/apache/commons/digester/FactoryCreateRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2406
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2439
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2537
    new-instance v0, Lorg/apache/commons/digester/FactoryCreateRule;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2492
    new-instance v0, Lorg/apache/commons/digester/FactoryCreateRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 2474
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/digester/Digester;->addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;Z)V

    return-void
.end method

.method public addFactoryCreate(Ljava/lang/String;Lorg/apache/commons/digester/ObjectCreationFactory;Z)V
    .locals 1

    .line 2582
    invoke-interface {p2, p0}, Lorg/apache/commons/digester/ObjectCreationFactory;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 2583
    new-instance v0, Lorg/apache/commons/digester/FactoryCreateRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/FactoryCreateRule;-><init>(Lorg/apache/commons/digester/ObjectCreationFactory;Z)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addObjectCreate(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2612
    new-instance v0, Lorg/apache/commons/digester/ObjectCreateRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addObjectCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2597
    new-instance v0, Lorg/apache/commons/digester/ObjectCreateRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addObjectCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2649
    new-instance v0, Lorg/apache/commons/digester/ObjectCreateRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addObjectCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2630
    new-instance v0, Lorg/apache/commons/digester/ObjectCreateRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/ObjectCreateRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addObjectParam(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 2391
    new-instance v0, Lorg/apache/commons/digester/ObjectParamRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/ObjectParamRule;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
    .locals 1

    .line 2138
    invoke-virtual {p2, p0}, Lorg/apache/commons/digester/Rule;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 2139
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/digester/Rules;->add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addRuleSet(Lorg/apache/commons/digester/RuleSet;)V
    .locals 5

    .line 2151
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getRuleNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 2152
    invoke-interface {p1}, Lorg/apache/commons/digester/RuleSet;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 2153
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    .line 2155
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "addRuleSet() with no namespace URI"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 2157
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRuleSet() with namespace URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2160
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/digester/Digester;->setRuleNamespaceURI(Ljava/lang/String;)V

    .line 2161
    invoke-interface {p1, p0}, Lorg/apache/commons/digester/RuleSet;->addRuleInstances(Lorg/apache/commons/digester/Digester;)V

    .line 2162
    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/Digester;->setRuleNamespaceURI(Ljava/lang/String;)V

    return-void
.end method

.method public addSetNestedProperties(Ljava/lang/String;)V
    .locals 1

    .line 2663
    new-instance v0, Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-direct {v0}, Lorg/apache/commons/digester/SetNestedPropertiesRule;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetNestedProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2677
    new-instance v0, Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/SetNestedPropertiesRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetNestedProperties(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2691
    new-instance v0, Lorg/apache/commons/digester/SetNestedPropertiesRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/SetNestedPropertiesRule;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2704
    new-instance v0, Lorg/apache/commons/digester/SetNextRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/SetNextRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2724
    new-instance v0, Lorg/apache/commons/digester/SetNextRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/SetNextRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetProperties(Ljava/lang/String;)V
    .locals 1

    .line 2769
    new-instance v0, Lorg/apache/commons/digester/SetPropertiesRule;

    invoke-direct {v0}, Lorg/apache/commons/digester/SetPropertiesRule;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2788
    new-instance v0, Lorg/apache/commons/digester/SetPropertiesRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/SetPropertiesRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetProperties(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2807
    new-instance v0, Lorg/apache/commons/digester/SetPropertiesRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/SetPropertiesRule;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2823
    new-instance v0, Lorg/apache/commons/digester/SetPropertyRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/SetPropertyRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetRoot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2739
    new-instance v0, Lorg/apache/commons/digester/SetRootRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/SetRootRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetRoot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2756
    new-instance v0, Lorg/apache/commons/digester/SetRootRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/SetRootRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetTop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2838
    new-instance v0, Lorg/apache/commons/digester/SetTopRule;

    invoke-direct {v0, p2}, Lorg/apache/commons/digester/SetTopRule;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public addSetTop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2858
    new-instance v0, Lorg/apache/commons/digester/SetTopRule;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/digester/SetTopRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->addRule(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V

    return-void
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 1212
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void

    .line 1216
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "characters("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1220
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected cleanup()V
    .locals 2

    .line 3159
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->inputSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/InputSource;

    .line 3161
    :try_start_0
    invoke-virtual {v1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 3166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->inputSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clear()V
    .locals 2

    const-string v0, ""

    .line 2884
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    .line 2885
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->bodyTexts:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 2886
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 2887
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->publicId:Ljava/lang/String;

    .line 2888
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 2889
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2890
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method protected configure()V
    .locals 1

    .line 3188
    iget-boolean v0, p0, Lorg/apache/commons/digester/Digester;->configured:Z

    if-eqz v0, :cond_0

    return-void

    .line 3193
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->initialize()V

    const/4 v0, 0x1

    .line 3197
    iput-boolean v0, p0, Lorg/apache/commons/digester/Digester;->configured:Z

    return-void
.end method

.method public createInputSourceFromURL(Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2121
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/Digester;->createInputSourceFromURL(Ljava/net/URL;)Lorg/xml/sax/InputSource;

    move-result-object p1

    return-object p1
.end method

.method public createInputSourceFromURL(Ljava/net/URL;)Lorg/xml/sax/InputSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2099
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/4 v1, 0x0

    .line 2100
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 2101
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2102
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 2103
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 2104
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->inputSources:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;
    .locals 2

    .line 3383
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 3384
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3385
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 3386
    move-object p1, v0

    check-cast p1, Ljava/lang/Exception;

    .line 3389
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    return-object p1
.end method

.method public createSAXException(Ljava/lang/String;)Lorg/xml/sax/SAXException;
    .locals 1

    const/4 v0, 0x0

    .line 3399
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    return-object p1
.end method

.method public createSAXException(Ljava/lang/String;Ljava/lang/Exception;)Lorg/xml/sax/SAXException;
    .locals 2

    if-eqz p2, :cond_0

    .line 3352
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 3354
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3355
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 3356
    move-object p2, v0

    check-cast p2, Ljava/lang/Exception;

    .line 3359
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_2

    .line 3360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 3363
    new-instance v0, Lorg/xml/sax/SAXParseException;

    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    invoke-direct {v0, p1, v1, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    return-object v0

    .line 3365
    :cond_1
    new-instance p2, Lorg/xml/sax/SAXParseException;

    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    invoke-direct {p2, p1, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    return-object p2

    .line 3368
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "No Locator!"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 3370
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0

    .line 3372
    :cond_3
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1233
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1235
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endDocument():  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements left"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 1238
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    const-string v1, "endDocument()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1243
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->rules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/digester/Rule;

    .line 1245
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/commons/digester/Rule;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1250
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Finish event threw error"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1251
    throw v0

    :catch_1
    move-exception v0

    .line 1247
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Finish event threw exception"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1248
    invoke-virtual {p0, v0}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object v0

    throw v0

    .line 1256
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->clear()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1277
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 1279
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_2

    .line 1286
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1287
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endElement("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1290
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  match=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1291
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  bodyText=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 1297
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_4

    :cond_3
    move-object p2, p3

    .line 1302
    :cond_4
    iget-object p3, p0, Lorg/apache/commons/digester/Digester;->matches:Ljava/util/Stack;

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz p3, :cond_7

    .line 1303
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1304
    iget-object v4, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1305
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getSubstitutor()Lorg/apache/commons/digester/Substitutor;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1307
    invoke-virtual {v5, v4}, Lorg/apache/commons/digester/Substitutor;->substitute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const/4 v5, 0x0

    .line 1309
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 1311
    :try_start_0
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/digester/Rule;

    if-eqz v0, :cond_6

    .line 1313
    iget-object v7, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Fire body() for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1315
    :cond_6
    invoke-virtual {v6, p1, p2, v4}, Lorg/apache/commons/digester/Rule;->body(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1320
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Body event threw error"

    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1321
    throw p1

    :catch_1
    move-exception p1

    .line 1317
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Body event threw exception"

    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1318
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :cond_7
    if-eqz v0, :cond_8

    .line 1326
    iget-object v4, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  No rules found matching \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1331
    :cond_8
    iget-object v4, p0, Lorg/apache/commons/digester/Digester;->bodyTexts:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuffer;

    iput-object v4, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_9

    .line 1333
    iget-object v4, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Popping body text \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_9
    if-eqz p3, :cond_b

    const/4 v1, 0x0

    .line 1338
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 1339
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    .line 1341
    :try_start_1
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/digester/Rule;

    if-eqz v0, :cond_a

    .line 1343
    iget-object v5, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Fire end() for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1345
    :cond_a
    invoke-virtual {v4, p1, p2}, Lorg/apache/commons/digester/Rule;->end(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1350
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "End event threw error"

    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1351
    throw p1

    :catch_3
    move-exception p1

    .line 1347
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "End event threw exception"

    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1348
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    .line 1357
    :cond_b
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_c

    .line 1359
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {p2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    goto :goto_2

    :cond_c
    const-string p1, ""

    .line 1361
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1377
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endPrefixMapping("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1382
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_1

    return-void

    .line 1387
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1388
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1389
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    const-string p1, "endPrefixMapping popped too many times"

    .line 1391
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/String;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1770
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse Error at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1773
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 1774
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1791
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse Fatal Error at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1794
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 1795
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method

.method public findNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 402
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    return-object v0

    .line 425
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/digester/Digester;->useContextClassLoader:Z

    if-eqz v0, :cond_1

    .line 426
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 432
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentElementName()Ljava/lang/String;
    .locals 2

    .line 466
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    const/16 v1, 0x2f

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentNamespaces()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1176
    iget-boolean v0, p0, Lorg/apache/commons/digester/Digester;->namespaceAware:Z

    if-nez v0, :cond_0

    .line 1177
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Digester is not namespace aware"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 1179
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1180
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1182
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1186
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1187
    throw v0

    :cond_1
    return-object v0
.end method

.method public getCustomContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .line 1107
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDebug()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    .line 1455
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 1687
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 514
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFactory()Ljavax/xml/parsers/SAXParserFactory;
    .locals 2

    .line 536
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v0, :cond_0

    .line 537
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    .line 538
    iget-boolean v1, p0, Lorg/apache/commons/digester/Digester;->namespaceAware:Z

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 539
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iget-boolean v1, p0, Lorg/apache/commons/digester/Digester;->xincludeAware:Z

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setXIncludeAware(Z)V

    .line 540
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iget-boolean v1, p0, Lorg/apache/commons/digester/Digester;->validating:Z

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 541
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->schema:Ljavax/xml/validation/Schema;

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 543
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->factory:Ljavax/xml/parsers/SAXParserFactory;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParserFactory;->getFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getLogger()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceAware()Z
    .locals 1

    .line 658
    iget-boolean v0, p0, Lorg/apache/commons/digester/Digester;->namespaceAware:Z

    return v0
.end method

.method public getParser()Ljavax/xml/parsers/SAXParser;
    .locals 3

    .line 762
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->parser:Ljavax/xml/parsers/SAXParser;

    if-eqz v0, :cond_0

    return-object v0

    .line 768
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/digester/Digester;->validating:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 778
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "SAXParserFactory"

    .line 779
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "schemaLocation"

    .line 781
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "schemaLanguage"

    .line 782
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->schemaLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/digester/ParserFeatureSetterFactory;->newSAXParser(Ljava/util/Properties;)Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->parser:Ljavax/xml/parsers/SAXParser;

    goto :goto_0

    .line 791
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->parser:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->parser:Ljavax/xml/parsers/SAXParser;

    return-object v0

    :catch_0
    move-exception v0

    .line 794
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Digester.getParser: "

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 819
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Lorg/xml/sax/XMLReader;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 857
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 859
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Cannot get XMLReader"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method getRegistrations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 3234
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->entityValidator:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .line 3124
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    return-object v0
.end method

.method public getRuleNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/digester/Rules;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRules(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3255
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/digester/Rules;->match(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRules()Lorg/apache/commons/digester/Rules;
    .locals 1

    .line 873
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->rules:Lorg/apache/commons/digester/Rules;

    if-nez v0, :cond_0

    .line 874
    new-instance v0, Lorg/apache/commons/digester/RulesBase;

    invoke-direct {v0}, Lorg/apache/commons/digester/RulesBase;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->rules:Lorg/apache/commons/digester/Rules;

    .line 875
    invoke-interface {v0, p0}, Lorg/apache/commons/digester/Rules;->setDigester(Lorg/apache/commons/digester/Digester;)V

    .line 877
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->rules:Lorg/apache/commons/digester/Rules;

    return-object v0
.end method

.method public getSAXLogger()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 906
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 961
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->schemaLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getStackAction()Lorg/apache/commons/digester/StackAction;
    .locals 1

    .line 1164
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    return-object v0
.end method

.method public getSubstitutor()Lorg/apache/commons/digester/Substitutor;
    .locals 1

    .line 1089
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->substitutor:Lorg/apache/commons/digester/Substitutor;

    return-object v0
.end method

.method public getUseContextClassLoader()Z
    .locals 1

    .line 1015
    iget-boolean v0, p0, Lorg/apache/commons/digester/Digester;->useContextClassLoader:Z

    return v0
.end method

.method public getValidating()Z
    .locals 1

    .line 1041
    iget-boolean v0, p0, Lorg/apache/commons/digester/Digester;->validating:Z

    return v0
.end method

.method public getXIncludeAware()Z
    .locals 1

    .line 687
    iget-boolean v0, p0, Lorg/apache/commons/digester/Digester;->xincludeAware:Z

    return v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 1068
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    .line 1071
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 1072
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1074
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-nez v0, :cond_1

    .line 1075
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    .line 1077
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 1080
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 1081
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public getXMLSchema()Ljavax/xml/validation/Schema;
    .locals 1

    .line 991
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->schema:Ljavax/xml/validation/Schema;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignorableWhitespace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected initialize()V
    .locals 0

    return-void
.end method

.method public isEmpty(Ljava/lang/String;)Z
    .locals 1

    .line 3090
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    if-eqz p1, :cond_0

    .line 3092
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1834
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1848
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1641
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notationDecl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public parse(Ljava/io/File;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1868
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->configure()V

    .line 1869
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 1870
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1872
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->cleanup()V

    .line 1873
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    return-object p1

    .line 1865
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File to parse is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1914
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->configure()V

    .line 1915
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 1916
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1917
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->cleanup()V

    .line 1918
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    return-object p1

    .line 1911
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream to parse is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1938
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->configure()V

    .line 1939
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 1940
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1941
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->cleanup()V

    .line 1942
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    return-object p1

    .line 1935
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Reader to parse is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1962
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->configure()V

    .line 1963
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->createInputSourceFromURL(Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p1

    .line 1964
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1965
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->cleanup()V

    .line 1966
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    return-object p1

    .line 1959
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String URI to parse is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1988
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->configure()V

    .line 1989
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->createInputSourceFromURL(Ljava/net/URL;)Lorg/xml/sax/InputSource;

    move-result-object p1

    .line 1990
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1991
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->cleanup()V

    .line 1992
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    return-object p1

    .line 1985
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URL to parse is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Lorg/xml/sax/InputSource;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1891
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->configure()V

    .line 1892
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 1893
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->cleanup()V

    .line 1894
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    return-object p1

    .line 1888
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputSource to parse is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .line 2901
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2903
    :catch_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Empty stack (returning null)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 3

    .line 2920
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const-string v1, "Empty stack (returning null)"

    if-gez v0, :cond_0

    .line 2922
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-object p1

    .line 2926
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2928
    :catch_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-object p1
.end method

.method public peek(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 3041
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/digester/Digester;->peek(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public peek(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    .line 3061
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 3063
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3064
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is empty"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3066
    :cond_0
    new-instance p1, Ljava/util/EmptyStackException;

    invoke-direct {p1}, Ljava/util/EmptyStackException;-><init>()V

    throw p1

    .line 3069
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, p2

    if-ltz p1, :cond_2

    .line 3073
    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3071
    :cond_2
    new-instance p1, Ljava/util/EmptyStackException;

    invoke-direct {p1}, Ljava/util/EmptyStackException;-><init>()V

    throw p1
.end method

.method public peekParams()Ljava/lang/Object;
    .locals 2

    .line 3270
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3272
    :catch_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Empty stack (returning null)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public peekParams(I)Ljava/lang/Object;
    .locals 3

    .line 3292
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const-string v1, "Empty stack (returning null)"

    if-gez v0, :cond_0

    .line 3294
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-object p1

    .line 3298
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3300
    :catch_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-object p1
.end method

.method public pop()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 2942
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 2943
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    if-eqz v2, :cond_0

    .line 2944
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    invoke-interface {v2, p0, v0, v1}, Lorg/apache/commons/digester/StackAction;->onPop(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    .line 2948
    :catch_0
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Empty stack (returning null)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-object v0
.end method

.method public pop(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 3009
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 3011
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3012
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stack \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is empty"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 3014
    :cond_0
    new-instance p1, Ljava/util/EmptyStackException;

    invoke-direct {p1}, Ljava/util/EmptyStackException;-><init>()V

    throw p1

    .line 3017
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 3019
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    if-eqz v1, :cond_2

    .line 3020
    invoke-interface {v1, p0, p1, v0}, Lorg/apache/commons/digester/StackAction;->onPop(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public popParams()Ljava/lang/Object;
    .locals 2

    .line 3317
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Popping params"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 3320
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3322
    :catch_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Empty stack (returning null)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1433
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 1435
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processingInstruction(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public push(Ljava/lang/Object;)V
    .locals 2

    .line 2962
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2963
    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/digester/StackAction;->onPush(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2966
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2967
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    .line 2969
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public push(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2982
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    if-eqz v0, :cond_0

    .line 2983
    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/digester/StackAction;->onPush(Lorg/apache/commons/digester/Digester;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2986
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 2988
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 2989
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->stacksByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pushParams(Ljava/lang/Object;)V
    .locals 2

    .line 3338
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3339
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Pushing params"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 3341
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->params:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2039
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2043
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->entityValidator:Ljava/util/HashMap;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public register(Ljava/lang/String;Ljava/net/URL;)V
    .locals 3

    .line 2022
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2025
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->entityValidator:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetRoot()V
    .locals 1

    const/4 v0, 0x0

    .line 3138
    iput-object v0, p0, Lorg/apache/commons/digester/Digester;->root:Ljava/lang/Object;

    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveEntity(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1708
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->publicId:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1713
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->entityValidator:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 1717
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 1718
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->entityValidator:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    :cond_3
    const-string v1, "\'"

    if-nez p1, :cond_7

    if-nez p2, :cond_5

    .line 1724
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1725
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p2, " Cannot resolve null entity, returning null InputSource"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_4
    return-object v0

    .line 1731
    :cond_5
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1732
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Trying to resolve using system ID \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1735
    :cond_6
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    :cond_7
    :goto_1
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1745
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Resolving to alternate DTD \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1749
    :cond_8
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->createInputSourceFromURL(Ljava/net/URL;)Lorg/xml/sax/InputSource;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 1751
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setCustomContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDebug(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 3

    .line 1467
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDocumentLocator("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1471
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 1678
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 595
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getFactory()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLogger(Lorg/apache/commons/logging/Log;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public setNamespaceAware(Z)V
    .locals 0

    .line 670
    iput-boolean p1, p0, Lorg/apache/commons/digester/Digester;->namespaceAware:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 841
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/xml/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setRuleNamespaceURI(Ljava/lang/String;)V
    .locals 1

    .line 750
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/digester/Rules;->setNamespaceURI(Ljava/lang/String;)V

    return-void
.end method

.method public setRules(Lorg/apache/commons/digester/Rules;)V
    .locals 0

    .line 890
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->rules:Lorg/apache/commons/digester/Rules;

    .line 891
    invoke-interface {p1, p0}, Lorg/apache/commons/digester/Rules;->setDigester(Lorg/apache/commons/digester/Digester;)V

    return-void
.end method

.method public setSAXLogger(Lorg/apache/commons/logging/Log;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 946
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->schemaLocation:Ljava/lang/String;

    return-void
.end method

.method public setSchemaLanguage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 977
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->schemaLanguage:Ljava/lang/String;

    return-void
.end method

.method public setStackAction(Lorg/apache/commons/digester/StackAction;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->stackAction:Lorg/apache/commons/digester/StackAction;

    return-void
.end method

.method public setSubstitutor(Lorg/apache/commons/digester/Substitutor;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->substitutor:Lorg/apache/commons/digester/Substitutor;

    return-void
.end method

.method public setUseContextClassLoader(Z)V
    .locals 0

    .line 1031
    iput-boolean p1, p0, Lorg/apache/commons/digester/Digester;->useContextClassLoader:Z

    return-void
.end method

.method public setValidating(Z)V
    .locals 0

    .line 1054
    iput-boolean p1, p0, Lorg/apache/commons/digester/Digester;->validating:Z

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0

    .line 704
    iput-boolean p1, p0, Lorg/apache/commons/digester/Digester;->xincludeAware:Z

    return-void
.end method

.method public setXMLSchema(Ljavax/xml/validation/Schema;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lorg/apache/commons/digester/Digester;->schema:Ljavax/xml/validation/Schema;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skippedEntity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1503
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    const-string v1, "startDocument()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1510
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->configure()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    .line 1533
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->customContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_0

    .line 1535
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    .line 1539
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1540
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startElement("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1545
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->bodyTexts:Ljava/util/Stack;

    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "\'"

    if-eqz v0, :cond_2

    .line 1547
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Pushing body text \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1549
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/digester/Digester;->bodyText:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_3

    .line 1554
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    :cond_3
    move-object p2, p3

    .line 1559
    :cond_4
    new-instance p3, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-direct {p3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1560
    iget-object v2, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x2f

    .line 1561
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1563
    :cond_5
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1564
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1566
    iget-object p3, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  New match=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1570
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getRules()Lorg/apache/commons/digester/Rules;

    move-result-object p3

    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-interface {p3, p1, v1}, Lorg/apache/commons/digester/Rules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 1571
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->matches:Ljava/util/Stack;

    invoke-virtual {v1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_9

    .line 1572
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1573
    invoke-virtual {p0}, Lorg/apache/commons/digester/Digester;->getSubstitutor()Lorg/apache/commons/digester/Substitutor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1575
    invoke-virtual {v1, p4}, Lorg/apache/commons/digester/Substitutor;->substitute(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object p4

    :cond_7
    const/4 v1, 0x0

    .line 1577
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 1579
    :try_start_0
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/digester/Rule;

    if-eqz v0, :cond_8

    .line 1581
    iget-object v3, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Fire begin() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1583
    :cond_8
    invoke-virtual {v2, p1, p2, p4}, Lorg/apache/commons/digester/Rule;->begin(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1588
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Begin event threw error"

    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1589
    throw p1

    :catch_1
    move-exception p1

    .line 1585
    iget-object p2, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    const-string p3, "Begin event threw exception"

    invoke-interface {p2, p3, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1586
    invoke-virtual {p0, p1}, Lorg/apache/commons/digester/Digester;->createSAXException(Ljava/lang/Exception;)Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :cond_9
    if-eqz v0, :cond_a

    .line 1594
    iget-object p1, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  No rules found matching \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/apache/commons/digester/Digester;->match:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPrefixMapping("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1618
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 1620
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1621
    iget-object v1, p0, Lorg/apache/commons/digester/Digester;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1661
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->saxLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unparsedEntityDecl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1811
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse Warning Error at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1816
    iget-object v0, p0, Lorg/apache/commons/digester/Digester;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    :cond_0
    return-void
.end method
