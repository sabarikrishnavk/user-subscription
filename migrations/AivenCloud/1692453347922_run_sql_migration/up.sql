CREATE TABLE "public"."user" (
  "userid" uuid NOT NULL,
  "name" text NOT NULL,
  "email" text NOT NULL,
  PRIMARY KEY ("userid"),
  UNIQUE ("userid"),
  UNIQUE ("email")
);
COMMENT ON TABLE "public"."user" IS E'user';
CREATE TABLE "public"."subscription" (
  "userid" uuid NOT NULL,
  "startdate" date NOT NULL,
  "nextbillingdate" date NOT NULL,
  "paymentid" uuid NOT NULL,
  "status" integer NOT NULL,
  PRIMARY KEY ("userid"),
  UNIQUE ("userid")
);
alter table "public"."subscription"
add constraint "subscription_userid_fkey" foreign key ("userid") references "public"."user" ("userid") on update restrict on delete restrict;