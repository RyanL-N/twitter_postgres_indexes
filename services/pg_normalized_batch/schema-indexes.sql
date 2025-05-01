CREATE INDEX tweet_tags_tag_id_tweets_idx ON tweet_tags USING btree (tag text_pattern_ops, id_tweets);

CREATE INDEX tweet_tags_id_tweets_tag_idx ON tweet_tags USING btree (id_tweets, tag);

CREATE INDEX tweets_id_tweets_lang_idx ON tweets USING btree (id_tweets, lang);

CREATE INDEX tweets_to_tsvector_idx ON tweets USING gin(to_tsvector('english', text));
